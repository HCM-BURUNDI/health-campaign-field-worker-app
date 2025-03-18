import 'package:collection/collection.dart';
import 'package:digit_components/digit_components.dart';
import 'package:digit_components/utils/date_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_campaign_field_worker_app/widgets/localized.dart';
import 'package:health_campaign_field_worker_app/widgets/reports/readonly_pluto_grid.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:registration_delivery/models/entities/household.dart';
import 'package:registration_delivery/registration_delivery.dart';
import 'package:registration_delivery/widgets/back_navigation_help_header.dart';

import '../../../blocs/summary_reports/custom_enumeration_summary_report.dart';
import '../../../router/app_router.dart';
import '../../../utils/utils.dart';
import '../../../utils/i18_key_constants.dart' as i18Local;

@RoutePage()
class CustomEumerationSummaryReportDetailsPage extends LocalizedStatefulWidget {
  const CustomEumerationSummaryReportDetailsPage({
    Key? key,
    super.appLocalizations,
  }) : super(key: key);

  @override
  State<CustomEumerationSummaryReportDetailsPage> createState() =>
      _CustomEumerationSummaryReportDetailsState();
}

class _CustomEumerationSummaryReportDetailsState
    extends LocalizedState<CustomEumerationSummaryReportDetailsPage> {
  @override
  void initState() {
    super.initState();
    // Load data when the page is initialized
    _loadData();
  }

  void _loadData() {
    final bloc = BlocProvider.of<CustomEnumerationSummaryReportBloc>(context);
    bloc.add(const CustomEnumerationSummaryReportLoadingEvent());
    Future.delayed(const Duration(milliseconds: 500), () {
      bloc.add(CustomEnumerationSummaryReportLoadDataEvent(
        userId: context.loggedInUserUuid,
      ));
    });
  }

  static const _householdKey = 'householdKey';
  static const _projectBeneficiaryKey = 'projectBeneficiaryKey';
  static const _closedHouseholdKey = 'closedHouseholdKey';
  static const _closedHouseholdAbsentKey = 'closedHouseholdAbsentKey';
  static const _closedHouseholdRefusedKey = 'closedHouseholdRefusedKey';

  static const _dateKey = 'dateKey';

  FormGroup _form() {
    return fb.group({});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CustomEnumerationSummaryReportBloc,
          CustomEnumerationSummaryReportState>(
        builder: (context, customEnumerationSummaryReportState) {
          if (customEnumerationSummaryReportState
              is CustomEnumerationSummaryReportLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ScrollableContent(
            footer: Padding(
              padding: const EdgeInsets.fromLTRB(kPadding, 0, kPadding, 0),
              child: DigitElevatedButton(
                child: Text(localizations
                    .translate(i18Local.acknowledgementSuccess.goToHome)),
                onPressed: () {
                  context.router.popUntilRouteWithName(HomeRoute.name);
                },
              ),
            ),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackNavigationHelpHeaderWidget(),
              Container(
                padding: const EdgeInsets.all(kPadding),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    localizations.translate(
                      i18Local.inventoryReportDetails.summaryReport,
                    ),
                    maxLines: 1,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ),
              if (customEnumerationSummaryReportState
                  is CustomEnumerationSummaryReportSummaryDataState)
                ReactiveFormBuilder(
                  form: _form,
                  builder: (ctx, form, child) {
                    return SizedBox(
                      height: 400,
                      child: _ReportDetailsContent(
                        title: localizations.translate(
                          i18Local.inventoryReportDetails.summaryReport,
                        ),
                        data: DigitGridData(
                          columns: [
                            DigitGridColumn(
                              label: localizations.translate(
                                i18Local.inventoryReportDetails.dateLabel,
                              ),
                              key: _dateKey,
                              width: 90,
                            ),
                            DigitGridColumn(
                              label: localizations.translate(
                                i18Local.inventoryReportDetails
                                    .householdRegisteredLabel,
                              ),
                              key: _householdKey,
                              width: localizations
                                      .translate(
                                        i18Local.inventoryReportDetails
                                            .householdRegisteredLabel,
                                      )
                                      .length *
                                  8,
                            ),
                            DigitGridColumn(
                              label: localizations.translate(i18Local
                                  .inventoryReportDetails
                                  .projectBeneficiaryRegisteredLabel),
                              key: _projectBeneficiaryKey,
                              width: localizations
                                      .translate(i18Local.inventoryReportDetails
                                          .projectBeneficiaryRegisteredLabel)
                                      .length *
                                  8,
                            ),
                            DigitGridColumn(
                              label: localizations.translate(i18Local
                                  .inventoryReportDetails
                                  .closedHouseholdRegisteredLabel),
                              key: _closedHouseholdKey,
                              width: localizations
                                      .translate(i18Local.inventoryReportDetails
                                          .closedHouseholdRegisteredLabel)
                                      .length *
                                  9,
                            ),
                            DigitGridColumn(
                              label: localizations.translate(i18Local
                                  .inventoryReportDetails
                                  .closedHouseholdRegisteredAbsentLabel),
                              key: _closedHouseholdAbsentKey,
                              width: localizations
                                      .translate(i18Local.inventoryReportDetails
                                          .closedHouseholdRegisteredAbsentLabel)
                                      .length *
                                  4,
                            ),
                            DigitGridColumn(
                              label: localizations.translate(i18Local
                                  .inventoryReportDetails
                                  .closedHouseholdRegisteredRefusedLabel),
                              key: _closedHouseholdRefusedKey,
                              width: localizations
                                      .translate(i18Local.inventoryReportDetails
                                          .closedHouseholdRegisteredRefusedLabel)
                                      .length *
                                  4,
                            ),
                          ],
                          rows: [
                            for (final entry
                                in customEnumerationSummaryReportState
                                    .summaryData.entries) ...[
                              DigitGridRow(
                                [
                                  DigitGridCell(
                                    key: _dateKey,
                                    value: entry.key,
                                  ),
                                  DigitGridCell(
                                    key: _householdKey,
                                    value:
                                        (entry.value[Constants.household] ?? 0)
                                            .toString(),
                                  ),
                                  DigitGridCell(
                                    key: _projectBeneficiaryKey,
                                    value: (entry.value[
                                                Constants.projectBeneficiary] ??
                                            0)
                                        .toString(),
                                  ),
                                  DigitGridCell(
                                    key: _closedHouseholdKey,
                                    value: (entry.value[Constants
                                                    .closedHousehold] ??
                                                0)
                                            .toString() ??
                                        "0",
                                  ),
                                  DigitGridCell(
                                    key: _closedHouseholdAbsentKey,
                                    value: (entry.value[Constants
                                                    .closedHouseholdAbsent] ??
                                                0)
                                            .toString() ??
                                        "0",
                                  ),
                                  DigitGridCell(
                                    key: _closedHouseholdRefusedKey,
                                    value: (entry.value[Constants
                                                    .closedHouseholdRefused] ??
                                                0)
                                            .toString() ??
                                        "0",
                                  ),
                                ],
                              ),
                            ],
                          ],
                        ),
                      ),
                    );
                  },
                ),
            ],
          );
        },
      ),
    );
  }
}

class _ReportDetailsContent extends StatelessWidget {
  final String title;
  final DigitGridData data;

  const _ReportDetailsContent({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: kPadding * 2),
          Flexible(
            child: ReadonlyDigitGrid(
              data: data,
            ),
          ),
        ],
      ),
    );
  }
}

class _NoReportContent extends StatelessWidget {
  final String title;
  final String message;

  const _NoReportContent({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: kPadding * 2,
          width: double.maxFinite,
        ),
        Center(
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.disabledColor,
            ),
          ),
        ),
      ],
    );
  }
}
