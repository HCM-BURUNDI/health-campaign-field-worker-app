import 'dart:math';

import 'package:collection/collection.dart';
import 'package:digit_components/widgets/digit_card.dart';
import 'package:digit_data_model/data/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:registration_delivery/data/repositories/local/project_beneficiary.dart';
import 'package:registration_delivery/data/repositories/local/task.dart';
import 'package:registration_delivery/models/entities/project_beneficiary.dart';
import 'package:registration_delivery/models/entities/status.dart';
import 'package:registration_delivery/models/entities/task.dart';
import 'package:registration_delivery/utils/utils.dart';
import '../../data/repositories/local/custom_project_beneficiary.dart';
import '../../data/repositories/local/custom_task.dart';
import '../../utils/extensions/extensions.dart';
import '../progress_indicator/progress_indicator.dart';

class CustomBeneficiaryProgressBar extends StatefulWidget {
  final String label;
  final String prefixLabel;

  const CustomBeneficiaryProgressBar({
    super.key,
    required this.label,
    required this.prefixLabel,
  });

  @override
  State<CustomBeneficiaryProgressBar> createState() =>
      CustomBeneficiaryProgressBarState();
}

class CustomBeneficiaryProgressBarState
    extends State<CustomBeneficiaryProgressBar> {
  int current = 0;

  @override
  void didChangeDependencies() {
    final repository =
        context.read<LocalRepository<TaskModel, TaskSearchModel>>()
            as CustomTaskLocalRepository;

    final projectBeneficiaryRepository = context.read<
            LocalRepository<ProjectBeneficiaryModel,
                ProjectBeneficiarySearchModel>>()
        as CustomProjectBeneficiaryLocalRepository;

    final projectId = RegistrationDeliverySingleton().projectId;
    final loggedInUserUuid = RegistrationDeliverySingleton().loggedInUserUuid;

    final now = DateTime.now();
    final gte = DateTime(
      now.year,
      now.month,
      now.day,
    );

    final lte = DateTime(
      now.year,
      now.month,
      now.day,
      23,
      59,
      59,
      999,
    );
    // Info : handles only registrar and distributor as , progress bar is enabled only for them currently,
    if (context.isDistributor) {
      repository.listenToChanges(
        query: TaskSearchModel(
          projectId: projectId,
          createdBy: loggedInUserUuid,
          status: Status.administeredSuccess.toValue(),
          plannedEndDate: lte.millisecondsSinceEpoch,
          plannedStartDate: gte.millisecondsSinceEpoch,
        ),
        listener: (data) async {
          final now = DateTime.now();
          final gte = DateTime(
            now.year,
            now.month,
            now.day,
          );

          final lte = DateTime(
            now.year,
            now.month,
            now.day,
            23,
            59,
            59,
            999,
          );

          TaskSearchModel taskSearchQuery = TaskSearchModel(
            status: Status.administeredSuccess.toValue(),
            createdBy: loggedInUserUuid,
            plannedEndDate: lte.millisecondsSinceEpoch,
            plannedStartDate: gte.millisecondsSinceEpoch,
            projectId: projectId,
          );
          List<TaskModel> results =
              await repository.progressBarSearch(taskSearchQuery);

          if (mounted) {
            setState(() {
              current = results.length;
            });
          }
        },
      );
    } else {
      projectBeneficiaryRepository.listenToChanges(
        query: ProjectBeneficiarySearchModel(
          beneficiaryRegistrationDateLte: lte,
          beneficiaryRegistrationDateGte: gte,
          projectId: [projectId!],
        ),
        listener: (data) async {
          final now = DateTime.now();
          final gte = DateTime(
            now.year,
            now.month,
            now.day,
          );

          final lte = DateTime(
            now.year,
            now.month,
            now.day,
            23,
            59,
            59,
            999,
          );

          ProjectBeneficiarySearchModel projectBeneficiarySearchQuery =
              ProjectBeneficiarySearchModel(
            beneficiaryRegistrationDateLte: lte,
            beneficiaryRegistrationDateGte: gte,
            projectId: [projectId],
          );
          List<ProjectBeneficiaryModel> results =
              await projectBeneficiaryRepository.progressBarSearch(
                  projectBeneficiarySearchQuery, loggedInUserUuid);

          // Info filtering beneficiaries who do not have tag or are null
          //(closed and ones where duplicate tags were used to create will be filtered here)
          List<ProjectBeneficiaryModel> filteredResults =
              results.where((element) => element.tag != null).toList();

          if (mounted) {
            setState(() {
              current = filteredResults.length;
            });
          }
        },
      );
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final target = context.isDistributor ? 325.0 : 50.0;

    return DigitCard(
      child: ProgressIndicatorContainer(
        label: '${max(target - current, 0).round()} ${widget.label}',
        prefixLabel: '$current ${widget.prefixLabel}',
        suffixLabel: target.toStringAsFixed(0),
        value: target == 0 ? 0 : min(current / target, 1),
      ),
    );
  }
}
