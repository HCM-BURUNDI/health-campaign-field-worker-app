import 'package:auto_route/auto_route.dart';
import 'package:digit_ui_components/digit_components.dart';
import 'package:digit_ui_components/theme/digit_extended_theme.dart';
import 'package:digit_ui_components/widgets/atoms/menu_card.dart';
import 'package:flutter/material.dart';
import 'package:health_campaign_field_worker_app/router/app_router.dart';
import 'package:inventory_management/router/inventory_router.gm.dart';

import 'package:inventory_management/utils/i18_key_constants.dart' as i18;
import 'package:inventory_management/widgets/localized.dart';
import 'package:inventory_management/blocs/inventory_report.dart';
import 'package:inventory_management/widgets/back_navigation_help_header.dart';

@RoutePage()
class CustomInventoryReportSelectionPage extends LocalizedStatefulWidget {
  const CustomInventoryReportSelectionPage({
    super.key,
    super.appLocalizations,
  });

  @override
  State<CustomInventoryReportSelectionPage> createState() =>
      CustomInventoryReportSelectionPageState();
}

class CustomInventoryReportSelectionPageState
    extends LocalizedState<CustomInventoryReportSelectionPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.digitTextTheme(context);

    return Scaffold(
      body: ScrollableContent(
        header: const Column(children: [
          BackNavigationHelpHeaderWidget(),
        ]),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                    spacer4, spacer2, spacer4, spacer2),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    localizations.translate(i18.inventoryReportSelection.label),
                    style: textTheme.headingXl,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: spacer2),
                  child: MenuCard(
                    heading: localizations.translate(
                      i18.inventoryReportSelection.inventoryReportReceiptLabel,
                    ),
                    description: localizations.translate(i18
                        .inventoryReportSelection
                        .inventoryReportReceiptDescription),
                    icon: Icons.login,
                    onTap: () => context.router.push(
                      CustomInventoryReportDetailsRoute(
                        reportType: InventoryReportType.receipt,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: spacer4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: spacer2),
                  child: MenuCard(
                    heading: localizations.translate(
                      i18.inventoryReportSelection.inventoryReportIssuedLabel,
                    ),
                    description: localizations.translate(i18
                        .inventoryReportSelection
                        .inventoryReportIssuedDescription),
                    icon: Icons.logout,
                    onTap: () => context.router.push(
                      CustomInventoryReportDetailsRoute(
                        reportType: InventoryReportType.dispatch,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: spacer4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: spacer2),
                  child: MenuCard(
                    heading: localizations.translate(i18
                        .inventoryReportSelection.inventoryReportReturnedLabel),
                    description: localizations.translate(
                      i18.inventoryReportSelection
                          .inventoryReportReturnedDescription,
                    ),
                    icon: Icons.settings_backup_restore,
                    onTap: () => context.router.push(
                      CustomInventoryReportDetailsRoute(
                        reportType: InventoryReportType.returned,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: spacer4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: spacer2),
                  child: MenuCard(
                    heading: localizations.translate(
                      i18.inventoryReportSelection.inventoryReportDamagedLabel,
                    ),
                    description: localizations.translate(
                      i18.inventoryReportSelection
                          .inventoryReportDamagedDescription,
                    ),
                    icon: Icons.store,
                    onTap: () => context.router.push(
                      CustomInventoryReportDetailsRoute(
                        reportType: InventoryReportType.damage,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: spacer4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: spacer2),
                  child: MenuCard(
                    heading: localizations.translate(
                      i18.inventoryReportSelection.inventoryReportLossLabel,
                    ),
                    description: localizations.translate(
                      i18.inventoryReportSelection
                          .inventoryReportLossDescription,
                    ),
                    icon: Icons.store,
                    onTap: () => context.router.push(
                      CustomInventoryReportDetailsRoute(
                        reportType: InventoryReportType.loss,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: spacer4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: spacer2),
                  child: MenuCard(
                    heading: localizations.translate(
                      i18.inventoryReportSelection
                          .inventoryReportReconciliationLabel,
                    ),
                    description: localizations.translate(
                      i18.inventoryReportSelection
                          .inventoryReportReconciliationDescription,
                    ),
                    icon: Icons.store,
                    onTap: () => context.router.push(
                      CustomInventoryReportDetailsRoute(
                        reportType: InventoryReportType.reconciliation,
                      ),
                    ),
                  ),
                ),
              ]),
              const SizedBox(height: spacer4),
            ],
          ),
        ],
      ),
    );
  }
}
