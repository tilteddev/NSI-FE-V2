import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nsf_v2/application/domain/api_interceptor.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class ExternalModules {
  
  @Named('ssoDio')
  @singleton
  Dio ssoDio() => Dio(BaseOptions(baseUrl: 'http://localhost:13006/api/v2/sso'));

  @Named('dataDio')
  @singleton
  Dio dataDio() => Dio(BaseOptions(baseUrl: 'http://localhost:13006/api/v2/data'))..interceptors.add(InventoryApiInterceptor());

  @preResolve  
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance(); 
}