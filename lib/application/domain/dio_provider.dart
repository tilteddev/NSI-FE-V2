import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class DioProvider {
  late Dio instance;

  DioProvider() {
    instance = _create();
  }
  
  Dio _create() {
    return Dio(BaseOptions(baseUrl: 'http://localhost:13006/api/v2'));
  }
}