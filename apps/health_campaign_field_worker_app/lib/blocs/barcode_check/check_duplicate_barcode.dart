import 'dart:async';

import 'package:collection/collection.dart';
import 'package:digit_data_model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registration_delivery/models/entities/status.dart';
import 'package:registration_delivery/models/entities/task.dart';
import 'package:registration_delivery/registration_delivery.dart';
import 'package:gs1_barcode_parser/gs1_barcode_parser.dart';

import '../../../utils/constants.dart';

part 'check_duplicate_barcode.freezed.dart';

typedef CheckDuplicateQrCodeEmitter = Emitter<CheckQrCodeState>;

class CheckDuplicateQrCodeBloc
    extends Bloc<CheckQrCodeEvent, CheckQrCodeState> {
  final TaskDataRepository taskRepository;

  CheckDuplicateQrCodeBloc({
    required this.taskRepository,
  }) : super(const CheckQrCodeDuplicateState()) {
    on(_handleLoadDataEvent);
  }

  Future<void> _handleLoadDataEvent(
    CheckQrCodeLoadDataEvent event,
    CheckDuplicateQrCodeEmitter emit,
  ) async {
    try {
      List<TaskModel> successfulTaskList =
          await (taskRepository as TaskLocalRepository).search(
        TaskSearchModel(status: Status.administeredSuccess.toValue()),
        event.userId,
      );

      Set<String> existingQrCodes = {};
      for (var task in successfulTaskList) {
        List<AdditionalField>? additionalFieldTask = task
            .additionalFields?.fields
            .where((e) =>
                e.key == Constants.intTwentyOne ||
                e.key == Constants.intZeroZero ||
                e.key == Constants.manualTwentyOne)
            ?.toList();
        for (AdditionalField field in additionalFieldTask ?? []) {
          List<String> filedKey = field.key.split(Constants.or);
          List<String> fieldValue = field.value.toString().split(Constants.or);
          if (filedKey.length != fieldValue.length &&
              !(filedKey.contains(Constants.intTwentyOne) ||
                  filedKey.contains(Constants.intZeroZero) ||
                  filedKey.contains(Constants.manualTwentyOne))) continue;
          Map<String, String> mapKeyValue = {};
          for (int i = 0; i < filedKey.length; i++) {
            mapKeyValue[filedKey[i]] = fieldValue[i];
          }
          // String qrCode = field.value;
          String? qrCode = mapKeyValue[Constants.intZeroZero];

          if (qrCode != null) {
            existingQrCodes.add(qrCode);
          } else {
            qrCode = mapKeyValue[Constants.intTwentyOne];
            if (qrCode != null) {
              existingQrCodes.add(qrCode);
            } else {
              qrCode = mapKeyValue[Constants.manualTwentyOne];
              if (qrCode != null) {
                existingQrCodes.add(qrCode);
              }
            }
          }
        }
      }
      List<String> duplicateQrCodes = [];
      for (GS1Barcode barcode in event.barcodes) {
        for (var element in barcode.elements.entries) {
          if (element.key == Constants.intTwentyOne ||
              element.key == Constants.intZeroZero) {
            String qrValue = element.value.data.toString();
            if (existingQrCodes.contains(qrValue)) {
              duplicateQrCodes.add(qrValue);
            }
          }
        }
      }
      emit(CheckQrCodeDuplicateState(
        duplicates: duplicateQrCodes,
        hasDuplicates: duplicateQrCodes.isNotEmpty,
      ));
    } catch (e) {
      emit(CheckQrCodeErrorState(
        message: e.toString(),
      ));
    }
  }
}

@freezed
class CheckQrCodeEvent with _$CheckQrCodeEvent {
  const factory CheckQrCodeEvent.loadData({
    required String userId,
    required List<GS1Barcode> barcodes,
  }) = CheckQrCodeLoadDataEvent;
}

@freezed
class CheckQrCodeState with _$CheckQrCodeState {
  const factory CheckQrCodeState.duplicate({
    @Default([]) List<String> duplicates,
    @Default(false) bool hasDuplicates,
  }) = CheckQrCodeDuplicateState;
  const factory CheckQrCodeState.error({
    required String message,
  }) = CheckQrCodeErrorState;
}
