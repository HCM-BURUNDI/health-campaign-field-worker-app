import 'dart:async';

import 'package:attendance_management/attendance_management.dart';
import 'package:collection/collection.dart';
import 'package:digit_data_model/data_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/typedefs.dart';

// Part of the code generated by Freezed for immutable classes
part 'attendance_individual_bloc.freezed.dart';

// Type definition for emitter used in the AttendanceIndividualBloc
typedef AttendanceIndividualEmitter = Emitter<AttendanceIndividualState>;

/*
  @author  Ramkrishna-egov
  */
// AttendanceIndividualBloc responsible for managing individual attendance logs-related state
class AttendanceIndividualBloc
    extends Bloc<AttendanceIndividualEvent, AttendanceIndividualState> {
  final AttendanceLogDataRepository? attendanceLogDataRepository;
  final LocalRepository<AttendanceLogModel, AttendanceLogSearchModel>?
      attendanceLogLocalRepository;

  AttendanceIndividualBloc(super.initialState,
      {required this.attendanceLogDataRepository,
      required this.attendanceLogLocalRepository}) {
    on<AttendanceIndividualLogSearchEvent>(_onIndividualAttendanceLogSearch);
    on<AttendanceMarkEvent>(_onIndividualAttendanceMark);
    on<SaveAsDraftEvent>(_onSaveAsDraft);
    on<SearchAttendeesEvent>(_onSearchAttendeeByName);
  }

  // Event handler for attendance log of Individual
  FutureOr<void> _onIndividualAttendanceLogSearch(
    AttendanceIndividualLogSearchEvent event,
    AttendanceIndividualEmitter emit,
  ) async {
    emit(const AttendanceIndividualState.loading());

    try {
      List<AttendeeModel> attendees = [];
      // Searching attendance log using provided parameters
      final attendanceLogs = await attendanceLogDataRepository?.search(
        AttendanceLogSearchModel(
          registerId: event.registerId,
        ),
      );

      // Filtering attendance logs for the current day
      final filteredLogs = attendanceLogs
          ?.where((log) {
            final logTime = log.time != null
                ? DateTime.fromMillisecondsSinceEpoch(log.time!)
                : null;
            final logDay = logTime != null
                ? DateTime(logTime.year, logTime.month, logTime.day)
                    .millisecondsSinceEpoch
                : null;
            final currentTime = DateTime.fromMillisecondsSinceEpoch(
              event.currentDate,
            );
            final currentDay =
                DateTime(currentTime.year, currentTime.month, currentTime.day)
                    .millisecondsSinceEpoch;

            return logDay == currentDay;
          })
          .map((a) => AttendanceLogModel(
                registerId: a.registerId,
                tenantId: a.tenantId,
                status: a.status,
                time: a.time,
                individualId: a.individualId,
                id: a.id,
                type: a.type,
                uploadToServer: a.uploadToServer,
              ))
          .toList();

      checkResponse(filteredLogs ?? [], attendees, event);
    } catch (ex) {
      String? error = ex as String;

      emit(AttendanceIndividualState.error(error));
    }
  }

  // Event handler for AttendanceMarkEvent
  FutureOr<void> _onIndividualAttendanceMark(
    AttendanceMarkEvent event,
    AttendanceIndividualEmitter emit,
  ) async {
    // Handling attendance marking
    await state.maybeMap(
      loaded: (value) async {
        List<AttendeeModel>? searchList;
        double status = 0;
        List<AttendeeModel> updatedList =
            value.attendanceCollectionModel!.map((e) {
          if (e.individualId == event.individualId) {
            if (e.status == -1) {
              status = 1;
            } else if (e.status == 1) {
              if (event.isSingleSession) {
                status = 0.5;
              } else {
                status = 0;
              }
            } else if (event.isSingleSession && e.status == 0.5) {
              status = 0;
            } else {
              status = 1;
            }
            return e.copyWith(status: status);
          }
          return e;
        }).toList();
        // Updating search list if it's available
        if (value.attendanceSearchModelList != null &&
            (value.attendanceSearchModelList ?? []).isNotEmpty) {
          searchList = value.attendanceSearchModelList!.map((e) {
            if (e.individualId == event.individualId) {
              if (e.status == -1) {
                status = 1;
              } else if (e.status == 1) {
                status = 0;
              } else {
                status = 1;
              }
              return e.copyWith(status: status);
            }
            return e;
          }).toList();
        }

        emit(value.copyWith(
          attendanceSearchModelList: searchList,
          attendanceCollectionModel: updatedList,
        ));
      },
      orElse: () {},
    );
  }

  // Event handler for SaveAsDraftEvent
  FutureOr<void> _onSaveAsDraft(
    SaveAsDraftEvent event,
    AttendanceIndividualEmitter emit,
  ) async {
    final List<AttendanceLogModel> list = [];
    await state.maybeMap(
      loaded: (value) async {
        DateTime twelvePM = DateTime(event.selectedDate.year,
            event.selectedDate.month, event.selectedDate.day, 11, 58);
        int halfDay = twelvePM.millisecondsSinceEpoch;
        if (value.attendanceCollectionModel != null) {
          value.attendanceCollectionModel?.forEach((e) {
            if (e.status != -1) {
              list.addAll([
                AttendanceLogModel(
                    individualId: e.individualId,
                    registerId: e.registerId,
                    tenantId: e.tenantId,
                    type: EnumValues.entry.toValue(),
                    status: e.status == 0
                        ? EnumValues.inactive.toValue()
                        : EnumValues.active.toValue(),
                    time: event.entryTime,
                    uploadToServer: (event.createOplog ?? false),
                    additionalDetails:
                        event.latitude != null && event.longitude != null
                            ? {
                                "latitude": event.latitude,
                                "longitude": event.longitude,
                              }
                            : null),
                AttendanceLogModel(
                    individualId: e.individualId,
                    registerId: e.registerId,
                    tenantId: e.tenantId,
                    type: EnumValues.exit.toValue(),
                    status: e.status == 0
                        ? EnumValues.inactive.toValue()
                        : EnumValues.active.toValue(),
                    time: e.status == 0
                        ? event.exitTime
                        : e.status == 0.5
                            ? halfDay
                            : event.exitTime,
                    uploadToServer: (event.createOplog ?? false),
                    additionalDetails:
                        event.latitude != null && event.longitude != null
                            ? {
                                EnumValues.latitude.toValue(): event.latitude,
                                EnumValues.longitude.toValue(): event.longitude,
                              }
                            : null)
              ]);
            }
          });

          // Saving attendance details as draft if [event.createOplog] is false, else submit the attendance to the server
          submitAttendanceDetails(
              attendeeList: value.attendanceCollectionModel ?? [],
              attendanceLogs: list,
              onMarked: (val) => false,
              createOplog: event.createOplog,
              isSingleSession: event.isSingleSession);
        }
        emit(value.copyWith(
          attendanceSearchModelList: value.attendanceSearchModelList,
          attendanceCollectionModel: value.attendanceCollectionModel,
        ));
      },
      orElse: () {},
    );
  }

  // Event handler for SearchAttendeesEvent
  FutureOr<void> _onSearchAttendeeByName(
    SearchAttendeesEvent event,
    AttendanceIndividualEmitter emit,
  ) {
    state.maybeMap(
      orElse: () {},
      loaded: (value) {
        // Searching attendees by name
        if (event.name.isNotEmpty && event.name.trim().length >= 2) {
          final List<AttendeeModel> result = value.attendanceCollectionModel!
              .where((item) =>
                  item.name!.toLowerCase().contains(event.name.toLowerCase()))
              .toList();

          emit(value.copyWith(attendanceSearchModelList: result));
        } else {
          emit(value.copyWith(attendanceSearchModelList: null));
        }
      },
    );
  }

  // Function to process response after searching attendance log
  checkResponse(
      List<AttendanceLogModel> logResponse,
      List<AttendeeModel> attendees,
      AttendanceIndividualLogSearchEvent event) async {
    bool anyLogPresent = false;
    final currentDate = DateTime.fromMillisecondsSinceEpoch(event.currentDate);
    int twelvePM =
        DateTime(currentDate.year, currentDate.month, currentDate.day, 11, 58)
            .millisecondsSinceEpoch;
    attendees = event.attendees.map((e) {
      final entryLogList = logResponse
          .where((l) =>
              l.individualId == e.individualId &&
              l.type == EnumValues.entry.toValue() &&
              l.time == event.entryTime)
          .toList();
      final exitLogList = logResponse
          .where((l) =>
              l.individualId == e.individualId &&
              l.type == EnumValues.exit.toValue() &&
              (l.time == event.exitTime ||
                  l.time == event.entryTime ||
                  (event.isSingleSession && l.time == twelvePM)))
          .toList();
      entryLogList.any((entry) => entry.uploadToServer == true);
      anyLogPresent = logResponse
          .where((l) =>
              (l.time == event.entryTime || l.time == event.exitTime) &&
              l.registerId == e.registerId)
          .toList()
          .any((log) => log.uploadToServer == true);

      return e.copyWith(
          status: ((entryLogList.isEmpty || exitLogList.isEmpty) &&
                  anyLogPresent != true)
              ? -1
              : (entryLogList.isNotEmpty &&
                          exitLogList.isNotEmpty &&
                          entryLogList.last.status == 'INACTIVE') ||
                      ((entryLogList.isEmpty || exitLogList.isEmpty) &&
                          anyLogPresent == true)
                  ? 0
                  : (entryLogList.isNotEmpty &&
                          exitLogList.isNotEmpty &&
                          event.isSingleSession == true &&
                          exitLogList.last.time == twelvePM)
                      ? 0.5
                      : 1);
    }).toList();

    emit(AttendanceIndividualState.loaded(
        attendanceCollectionModel: attendees, viewOnly: anyLogPresent));
  }

  void submitAttendanceDetails(
      {required List<AttendeeModel> attendeeList,
      required List<AttendanceLogModel> attendanceLogs,
      required bool Function(dynamic val) onMarked,
      bool? createOplog,
      required bool isSingleSession}) async {
    final existingLogs = await attendanceLogDataRepository?.search(
          AttendanceLogSearchModel(
            registerId: attendanceLogs.firstOrNull?.registerId,
          ),
        ) ??
        [];

    // Mapping attendance logs for submission
    final hcmAttendanceLogs = attendanceLogs.map(
      (e) {
        final existingLog = existingLogs.where(
          (ele) {
            return isSingleSession == true
                ? ele.individualId == e.individualId &&
                    ele.registerId == e.registerId &&
                    ((ele.type == 'ENTRY' &&
                            e.type == 'ENTRY' &&
                            ele.time == e.time) ||
                        (ele.type == 'EXIT' &&
                            e.type == 'EXIT' &&
                            ele.time == e.time))
                : ele.individualId == e.individualId &&
                        ele.registerId == e.registerId &&
                        ele.time == e.time &&
                        ele.type == e.type &&
                        ele.clientReferenceId != null
                    ? true
                    : false;
          },
        ).toList();

        return e.copyWith(
          rowVersion: 1,
          clientReferenceId: (existingLog).isNotEmpty
              ? existingLog.last.clientReferenceId
              : IdGen.i.identifier,
          clientAuditDetails: ClientAuditDetails(
            createdBy: AttendanceSingleton().loggedInUserUuid,
            createdTime: DateTime.now().millisecondsSinceEpoch,
            lastModifiedTime: DateTime.now().millisecondsSinceEpoch,
            lastModifiedBy: AttendanceSingleton().loggedInUserUuid,
          ),
          auditDetails: AuditDetails(
            createdBy: AttendanceSingleton().loggedInUserUuid,
            createdTime: DateTime.now().millisecondsSinceEpoch,
            lastModifiedTime: DateTime.now().millisecondsSinceEpoch,
            lastModifiedBy: AttendanceSingleton().loggedInUserUuid,
          ),
        );
      },
    ).toList();

    // Grouping individuals and creating attendance logs
    final groupedIndividuals =
        hcmAttendanceLogs.groupListsBy((ele) => ele.individualId);

    for (final log in groupedIndividuals.entries) {
      final createOpLog = (createOplog ?? false) &&
          (log.value.where((l) => l.type == 'ENTRY').lastOrNull?.time !=
              log.value.where((l) => l.type == 'EXIT').lastOrNull?.time);
      await createAttendanceLog(
        log.value,
        'ENTRY',
        createOpLog,
      );
      await createAttendanceLog(
        log.value,
        'EXIT',
        createOpLog,
      );
    }
  }

  // Method to create attendance log
  Future<void> createAttendanceLog(
      List<AttendanceLogModel> logs, String type, bool createOpLog) async {
    final lastLog = logs.where((l) => l.type == type).lastOrNull;
    await attendanceLogLocalRepository?.create(
      lastLog!,
      createOpLog: createOpLog &&
          (logs.where((l) => l.type == 'ENTRY').lastOrNull?.time !=
              logs.where((l) => l.type == 'EXIT').lastOrNull?.time),
    );
  }
}

@freezed
class AttendanceIndividualEvent with _$AttendanceIndividualEvent {
  // Event for searching individual attendance log
  const factory AttendanceIndividualEvent.individualAttendanceLogSearch({
    required String registerId,
    required String tenantId,
    required int entryTime,
    required int exitTime,
    required int currentDate,
    required List<AttendeeModel> attendees,
    required int offset,
    required int limit,
    @Default(false) bool isSingleSession,
  }) = AttendanceIndividualLogSearchEvent;
  // Event for marking individual attendance
  const factory AttendanceIndividualEvent.individualAttendanceMark({
    @Default(0) int entryTime,
    @Default(0) int exitTime,
    @Default(-1) status,
    @Default(false) bool isSingleSession,
    required String individualId,
    required String registerId,
  }) = AttendanceMarkEvent;
  // Event for saving attendance as draft
  const factory AttendanceIndividualEvent.saveAsDraft({
    required int entryTime,
    required int exitTime,
    required DateTime selectedDate,
    @Default(false) bool isSingleSession,
    @Default(false) bool? createOplog,
    double? latitude,
    double? longitude,
  }) = SaveAsDraftEvent;

  // Event for searching attendees by name
  const factory AttendanceIndividualEvent.searchAttendees({
    required String name,
  }) = SearchAttendeesEvent;
}

// Freezed class for defining individual attendance-related states
@freezed
class AttendanceIndividualState with _$AttendanceIndividualState {
  const AttendanceIndividualState._();
  // Initial state
  const factory AttendanceIndividualState.initial() = _Initial;
  // Loading state
  const factory AttendanceIndividualState.loading() = _Loading;
  // Loaded state with attendance data
  factory AttendanceIndividualState.loaded({
    List<AttendeeModel>? attendanceSearchModelList,
    List<AttendeeModel>? attendanceCollectionModel,
    @Default(0) int offsetData,
    @Default(0) int currentOffset,
    @Default(0) int countData,
    @Default(10) int limitData,
    @Default(false) bool viewOnly,
  }) = _AttendanceRowModelLoaded;
  // Error state
  const factory AttendanceIndividualState.error(String? error) = _Error;
}
