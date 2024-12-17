import 'dart:async';

import 'package:digit_components/utils/date_utils.dart';
import 'package:digit_data_model/utils/typedefs.dart'
    hide ProductVariantDataRepository;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registration_delivery/models/entities/status.dart';
import 'package:registration_delivery/registration_delivery.dart';
import '../../data/repositories/local/custom_task.dart';
import '../../utils/constants.dart';
import '../../utils/environment_config.dart';

part 'custom_enumeration_summary_report.freezed.dart';

typedef CustomEnumerationSummaryReportEmitter
    = Emitter<CustomEnumerationSummaryReportState>;

class CustomEnumerationSummaryReportBloc extends Bloc<
    CustomEnumerationSummaryReportEvent, CustomEnumerationSummaryReportState> {
  final HouseholdDataRepository householdRepository;
  final ProjectBeneficiaryDataRepository projectBeneficiaryRepository;
  final TaskDataRepository taskRepository;

  CustomEnumerationSummaryReportBloc({
    required this.householdRepository,
    required this.projectBeneficiaryRepository,
    required this.taskRepository,
  }) : super(const CustomEnumerationSummaryReportEmptyState()) {
    on(_handleLoadDataEvent);
    on(_handleLoadingEvent);
  }

  Future<void> _handleLoadDataEvent(
    CustomEnumerationSummaryReportLoadDataEvent event,
    CustomEnumerationSummaryReportEmitter emit,
  ) async {
    List<HouseholdModel> householdList = [];
    List<ProjectBeneficiaryModel> projectBeneficiaryList = [];
    List<TaskModel> closedHouseholdTaskList = [];

    final userId = event.userId;

    //  read all households from db which are created by userId
    householdList = await (householdRepository as HouseholdLocalRepository)
        .search(HouseholdSearchModel(tenantId: envConfig.variables.tenantId),
            userId);

    //  read all projectBeneficiaries from db which are created by userId
    projectBeneficiaryList = await (projectBeneficiaryRepository
            as ProjectBeneficiaryLocalRepository)
        .search(
            ProjectBeneficiarySearchModel(
                tenantId: envConfig.variables.tenantId),
            userId);
    //  read all closed household task from db which are created by userId
    closedHouseholdTaskList =
        await (taskRepository as CustomTaskLocalRepository).progressBarSearch(
      TaskSearchModel(status: Status.closeHousehold.toValue()),
      userId,
    );

    Map<String, List<HouseholdModel>> dateVsHousehold = {};
    Map<String, List<ProjectBeneficiaryModel>> dateVsProjectBeneficiary = {};
    Map<String, List<TaskModel>> dateVsClosedHouseholdTask = {};
    Set<String> uniqueDates = {};

    Map<String, int> dateVsHouseholdCount = {};
    Map<String, int> dateVsProjectBeneficiaryCount = {};
    Map<String, int> dateVsClosedHouseholdTaskCount = {};

    for (var element in householdList) {
      var dateKey = DigitDateUtils.getDateFromTimestamp(
        element.clientAuditDetails!.createdTime,
      );

      dateVsHousehold.putIfAbsent(dateKey, () => []).add(element);
    }
    for (var element in projectBeneficiaryList) {
      var dateKey = DigitDateUtils.getDateFromTimestamp(
        element.clientAuditDetails!.createdTime,
      );

      dateVsProjectBeneficiary.putIfAbsent(dateKey, () => []).add(element);
    }
    for (var element in closedHouseholdTaskList) {
      var dateKey = DigitDateUtils.getDateFromTimestamp(
        element.clientAuditDetails!.createdTime,
      );

      dateVsClosedHouseholdTask.putIfAbsent(dateKey, () => []).add(element);
    }

    // get a set of unique dates
    getUniqueSetOfDates(
      dateVsHousehold,
      dateVsProjectBeneficiary,
      dateVsClosedHouseholdTask,
      uniqueDates,
    );

    // populate the day vs count for that day map
    populateDateVsCountMap(dateVsHousehold, dateVsHouseholdCount);
    populateDateVsCountMap(
        dateVsProjectBeneficiary, dateVsProjectBeneficiaryCount);
    populateDateVsCountMap(
        dateVsClosedHouseholdTask, dateVsClosedHouseholdTaskCount);

    Map<String, Map<String, int>> dateVsEntityVsCountMap = {};

    popoulateDateVsEntityCountMap(
      dateVsEntityVsCountMap,
      dateVsHouseholdCount,
      dateVsProjectBeneficiaryCount,
      dateVsClosedHouseholdTaskCount,
      uniqueDates,
    );

    emit(CustomEnumerationSummaryReportSummaryDataState(
      summaryData: dateVsEntityVsCountMap,
    ));
  }

  void popoulateDateVsEntityCountMap(
    Map<String, Map<String, int>> dateVsEntityVsCountMap,
    Map<String, int> dateVsHouseholdCount,
    Map<String, int> dateVsProjectBeneficiaryCount,
    Map<String, int> dateVsClosedHouseholdTaskCount,
    Set<String> uniqueDates,
  ) {
    for (var date in uniqueDates) {
      Map<String, int> elementVsCount = {};
      if (dateVsHouseholdCount.containsKey(date) &&
          dateVsHouseholdCount[date] != null) {
        var count = dateVsHouseholdCount[date];
        elementVsCount[Constants.household] = count ?? 0;
      }
      if (dateVsProjectBeneficiaryCount.containsKey(date) &&
          dateVsProjectBeneficiaryCount[date] != null) {
        var count = dateVsProjectBeneficiaryCount[date];
        elementVsCount[Constants.projectBeneficiary] = count ?? 0;
      }
      if (dateVsClosedHouseholdTaskCount.containsKey(date) &&
          dateVsClosedHouseholdTaskCount[date] != null) {
        var count = dateVsClosedHouseholdTaskCount[date];
        elementVsCount[Constants.closedHousehold] = count ?? 0;
      }
      dateVsEntityVsCountMap[date] = elementVsCount;
    }
  }

  void populateDateVsCountMap(
      Map<String, List> map, Map<String, int> dateVsCount) {
    map.forEach((key, value) {
      dateVsCount[key] = value.length;
    });
  }

  void getUniqueSetOfDates(
    Map<String, List<HouseholdModel>> dateVsHousehold,
    Map<String, List<ProjectBeneficiaryModel>> dateVsProjectBeneficiary,
    Map<String, List<TaskModel>> dateVsClosedHouseholdTask,
    Set<String> uniqueDates,
  ) {
    uniqueDates.addAll(dateVsHousehold.keys.toSet());
    uniqueDates.addAll(dateVsProjectBeneficiary.keys.toSet());
    uniqueDates.addAll(dateVsClosedHouseholdTask.keys.toSet());
  }

  Future<void> _handleLoadingEvent(
    CustomEnumerationSummaryReportLoadingEvent event,
    CustomEnumerationSummaryReportEmitter emit,
  ) async {
    emit(const CustomEnumerationSummaryReportLoadingState());
  }
}

@freezed
class CustomEnumerationSummaryReportEvent
    with _$CustomEnumerationSummaryReportEvent {
  const factory CustomEnumerationSummaryReportEvent.loadData({
    required String userId,
  }) = CustomEnumerationSummaryReportLoadDataEvent;

  const factory CustomEnumerationSummaryReportEvent.loading() =
      CustomEnumerationSummaryReportLoadingEvent;
}

@freezed
class CustomEnumerationSummaryReportState
    with _$CustomEnumerationSummaryReportState {
  const factory CustomEnumerationSummaryReportState.loading() =
      CustomEnumerationSummaryReportLoadingState;
  const factory CustomEnumerationSummaryReportState.empty() =
      CustomEnumerationSummaryReportEmptyState;

  const factory CustomEnumerationSummaryReportState.summaryData({
    @Default({}) Map<String, Map<String, int>> summaryData,
  }) = CustomEnumerationSummaryReportSummaryDataState;
}
