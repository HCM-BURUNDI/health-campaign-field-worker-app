import 'package:auto_route/auto_route.dart';
import 'package:closed_household/blocs/closed_household.dart';
import 'package:closed_household/router/closed_household_router.gm.dart';
import 'package:digit_components/digit_components.dart';
import 'package:digit_components/utils/date_utils.dart';
import 'package:digit_components/widgets/atoms/details_card.dart';
import 'package:digit_scanner/blocs/scanner.dart';
import 'package:digit_scanner/pages/qr_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_campaign_field_worker_app/blocs/scanner/custom_digit_scanner_bloc.dart';

import '../../../widgets/localized.dart';
import 'package:closed_household/utils/i18_key_constants.dart' as i18;
import 'package:closed_household/utils/utils.dart';
import 'package:closed_household/widgets/back_navigation_help_header.dart';
import 'package:closed_household/widgets/showcase/showcase_button.dart';
import '../../../utils/i18_key_constants.dart' as i18Local;

import '../../blocs/custom_blocs/closed_household.dart' as custombloc;

@RoutePage()
class CustomClosedHouseholdSummaryPage extends LocalizedStatefulWidget {
  final String reason;
  final String? refuseReasonComment;

  const CustomClosedHouseholdSummaryPage({
    required this.reason,
    required this.refuseReasonComment,
    super.key,
    super.appLocalizations,
  });

  @override
  State<CustomClosedHouseholdSummaryPage> createState() =>
      CustomClosedHouseholdSummaryPageState();
}

class CustomClosedHouseholdSummaryPageState
    extends LocalizedState<CustomClosedHouseholdSummaryPage> {
  String getLocalizedMessage(String code) {
    return localizations.translate(code);
  }

  @override
  void initState() {
    context.read<CustomDigitScannerBloc>().add(
        const CustomDigitScannerEvent.handleScanner(qrCode: [], barCode: []));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<custombloc.ClosedHouseholdBloc,
        custombloc.ClosedHouseholdState>(builder: (context, householdState) {
      return Scaffold(
          body: ScrollableContent(
              enableFixedButton: true,
              header: const BackNavigationHelpHeaderWidget(
                showHelp: false,
              ),
              footer: DigitCard(
                margin: const EdgeInsets.fromLTRB(0, kPadding, 0, 0),
                padding:
                    const EdgeInsets.fromLTRB(kPadding, kPadding, kPadding, 0),
                child: BlocBuilder<CustomDigitScannerBloc,
                    CustomDigitScannerState>(builder: (context, scannerState) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DigitElevatedButton(
                        onPressed: () {
                          context.read<custombloc.ClosedHouseholdBloc>().add(
                              custombloc.ClosedHouseholdEvent.handleSubmit(
                                  reason: widget.reason.toUpperCase(),
                                  refuseReasonComment:
                                      widget.refuseReasonComment,
                                  context: context,
                                  householdHeadName:
                                      householdState.householdHeadName,
                                  locationAccuracy:
                                      householdState.locationAccuracy,
                                  longitude: householdState.longitude,
                                  latitude: householdState.latitude,
                                  tag: scannerState.qrCodes.isNotEmpty
                                      ? scannerState.qrCodes.first
                                      : null));

                          context.router
                              .push(ClosedHouseholdAcknowledgementRoute());
                        },
                        child: Center(
                          child: Text(
                            localizations
                                .translate(i18.common.coreCommonSubmit),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
              slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  DigitCard(
                    child: LabelValueList(
                        heading: localizations.translate(
                            i18.closeHousehold.closeHouseholdSummaryLabel),
                        withDivider: false,
                        items: [
                          LabelValuePair(
                            label: localizations.translate(
                                i18.closeHousehold.closeHouseholdDate),
                            value: (DigitDateUtils.getDateFromTimestamp(
                                    DateTime.now().millisecondsSinceEpoch,
                                    dateFormat: 'dd MMM yyyy'))
                                .toString(),
                          ),
                          LabelValuePair(
                            label: localizations.translate(
                                i18.closeHousehold.closeHouseholdVillageName),
                            value: localizations.translate(
                                ClosedHouseholdSingleton().boundary!.code ??
                                    ClosedHouseholdSingleton().boundary!.name ??
                                    ""),
                          ),
                          LabelValuePair(
                            label: localizations.translate(
                                i18.closeHousehold.closeHouseholdHeadName),
                            value: householdState.householdHeadName ??
                                localizations
                                    .translate(i18.common.coreCommonNA),
                          ),
                          LabelValuePair(
                            label: localizations.translate(i18
                                .closeHousehold.closeHouseholdGpsAccuracyLabel),
                            value: householdState.locationAccuracy != null
                                ? '${householdState.locationAccuracy.toStringAsFixed(2)} ${localizations.translate(i18.common.coreCommonMeters)}'
                                : localizations
                                    .translate(i18.common.coreCommonNA),
                          ),
                          LabelValuePair(
                            label: localizations.translate(
                                i18Local.beneficiaryDetails.reasonLabelText),
                            value: localizations
                                .translate(widget.reason.toUpperCase()),
                          )
                        ]),
                  ),
                ],
              ),
            )
          ]));
    });
  }
}
