import 'dart:io';

import 'package:dio/dio.dart';
import 'package:nsf_v2/application/routes.dart';
import 'package:nsf_v2/application/service/external_services.dart';

class InventoryApiInterceptor extends QueuedInterceptor {

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['accessToken'] = ExternalServices.instance.accessToken;
    options.headers['refreshToken'] = ExternalServices.instance.refreshToken;
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if(err.response?.statusCode == HttpStatus.unauthorized) {
      await ExternalServices.instance.clearKeys();
      router.goNamed('auth_screen');
    }
    super.onError(err, handler);
  }
}