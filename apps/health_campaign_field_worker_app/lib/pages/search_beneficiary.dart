import 'package:digit_components/digit_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../blocs/search_households/search_households.dart';
import '../data/local_store/sql_store/sql_store.dart';
import '../data/network_manager.dart';
import '../models/beneficiary_statistics/beneficiary_statistics_model.dart';
import '../models/data_model.dart';
import '../router/app_router.dart';
import '../utils/i18_key_constants.dart' as i18;
import '../widgets/beneficiary/beneficiary_statistics_card.dart';
import '../widgets/beneficiary/view_beneficiary_card.dart';
import '../widgets/header/back_navigation_help_header.dart';
import '../widgets/localized.dart';

class SearchBeneficiaryPage extends LocalizedStatefulWidget {
  const SearchBeneficiaryPage({
    super.key,
    super.appLocalizations,
  });

  @override
  State<SearchBeneficiaryPage> createState() => _SearchBeneficiaryPageState();
}

class _SearchBeneficiaryPageState
    extends LocalizedState<SearchBeneficiaryPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final sql = context.read<LocalSqlDataStore>();

    return BlocProvider(
      create: (context) {
        final networkManager = context.read<NetworkManager>();

        return SearchHouseholdsBloc(
          projectBeneficiary: networkManager.repository<ProjectBeneficiaryModel,
              ProjectBeneficiarySearchModel>(
            context,
          ),
          householdMember: networkManager
              .repository<HouseholdMemberModel, HouseholdMemberSearchModel>(
            context,
          ),
          household:
              networkManager.repository<HouseholdModel, HouseholdSearchModel>(
            context,
          ),
          individual: networkManager
              .repository<IndividualModel, IndividualSearchModel>(context),
        );
      },
      child: KeyboardVisibilityBuilder(
        builder: (context, isKeyboardVisible) => Scaffold(
          body: ScrollableContent(
            header: Column(children: const [
              BackNavigationHelpHeaderWidget(),
            ]),
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    localizations
                        .translate(i18.searchBeneficiary.statisticsLabelText),
                    style: theme.textTheme.displayMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              StreamBuilder(
                initialData: const [],
                stream: sql.select(sql.taskResource).watch(),
                builder: (context, taskSnapshot) {
                  final taskCount = taskSnapshot.data?.length ?? 0;

                  return StreamBuilder(
                    initialData: const [],
                    // TODO: Needs to have a remote API counterpart
                    stream: sql.select(sql.household).watch(),
                    builder: (context, householdSnapshot) {
                      final householdCount =
                          householdSnapshot.data?.length ?? 0;

                      return BeneficiaryStatisticsCard(
                        beneficiaryStatistics:
                            BeneficiaryStatisticsWrapperModel(
                          beneficiaryStatisticsList: [
                            BeneficiaryStatisticsModel(
                              title: householdCount.toString(),
                              content: localizations.translate(
                                i18.searchBeneficiary.noOfHouseholdsRegistered,
                              ),
                            ),
                            BeneficiaryStatisticsModel(
                              title: taskCount.toString(),
                              content: localizations.translate(
                                i18.searchBeneficiary.noOfResourcesDelivered,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              DigitSearchBar(
                controller: searchController,
                hintText: localizations.translate(
                  i18.searchBeneficiary.beneficiarySearchHintText,
                ),
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  final bloc = context.read<SearchHouseholdsBloc>();
                  if (value.trim().length < 2) {
                    bloc.add(const SearchHouseholdsClearEvent());

                    return;
                  }

                  bloc.add(
                    SearchHouseholdsSearchByHouseholdHeadEvent(
                      searchText: value.trim(),
                    ),
                  );
                },
              ),
              // const ViewBeneficiaryCard(),
              const SizedBox(height: 16),
              BlocBuilder<SearchHouseholdsBloc, SearchHouseholdsState>(
                builder: (context, state) {
                  return state.map(
                    loading: (value) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    notFound: (value) => DigitInfoCard(
                      description: localizations.translate(
                        i18.searchBeneficiary.beneficiaryInfoDescription,
                      ),
                      title: localizations.translate(
                        i18.searchBeneficiary.beneficiaryInfoTitle,
                      ),
                    ),
                    empty: (value) => const Offstage(),
                    results: (value) => Column(
                      children: [
                        for (final i in value.householdMembers)
                          ViewBeneficiaryCard(
                            householdMember: i,
                            onOpenPressed: () async {
                              final bloc = context.read<SearchHouseholdsBloc>();
                              await context.router.push(
                                BeneficiaryWrapperRoute(
                                  wrapper: i,
                                ),
                              );

                              bloc.add(
                                SearchHouseholdsSearchByHouseholdHeadEvent(
                                  searchText: searchController.text,
                                ),
                              );
                            },
                          ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          bottomNavigationBar: Offstage(
            offstage: isKeyboardVisible,
            child: SizedBox(
              height: 90,
              child: DigitCard(
                child: BlocBuilder<SearchHouseholdsBloc, SearchHouseholdsState>(
                  builder: (context, state) {
                    final onPressed = state.maybeMap(
                      orElse: () => null,
                      results: (value) => () => context.router.push(
                            BeneficiaryRegistrationWrapperRoute(),
                          ),
                      notFound: (value) => () => context.router.push(
                            BeneficiaryRegistrationWrapperRoute(
                              searchQuery: value.searchQuery,
                            ),
                          ),
                    );

                    return DigitElevatedButton(
                      onPressed: onPressed,
                      child: Center(
                        child: Text(localizations.translate(
                          i18.searchBeneficiary.beneficiaryAddActionLabel,
                        )),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
