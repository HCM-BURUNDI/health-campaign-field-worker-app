import 'dart:async';

import 'package:dio/dio.dart';
import '../../../utils/environment_config.dart';

import '../../../utils/utils.dart';

class BandwidthCheckRepository {
  final Dio _client;
  final String bandwidthPath;

  const BandwidthCheckRepository(this._client, {required this.bandwidthPath});

  FutureOr pingBandwidthCheck({
    required bandWidthCheckModel,
  }) async {
    final headers = <String, String>{};
    try {
      final startTime = DateTime.now();
      await _client.post(
        bandwidthPath,
        queryParameters: {"tenantId": envConfig.variables.tenantId},
        data: requestData,
        options: Options(headers: headers),
      );

      final timeconsumed =
          ((DateTime.now().difference(startTime).inMilliseconds)) / 1000;
      final speed = (((800 / timeconsumed) / 1000));

      return speed;
    } on DioError catch (e) {
      rethrow;
    }
  }
}
