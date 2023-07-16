// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../domain/remote/inventory_http_service.dart' as _i4;
import '../../domain/remote/user_http_service.dart' as _i6;
import '../../domain/remote/user_session_http_service.dart' as _i7;
import '../../domain/repository/inventory/inventory_repository.dart' as _i8;
import '../../domain/repository/user/user_repository.dart' as _i9;
import '../../domain/repository/user_session/user_session_repository.dart'
    as _i10;
import 'external_modules.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final externalModules = _$ExternalModules();
    gh.singleton<_i3.Dio>(
      externalModules.ssoDio(),
      instanceName: 'ssoDio',
    );
    gh.singleton<_i3.Dio>(
      externalModules.dataDio(),
      instanceName: 'dataDio',
    );
    gh.singleton<_i4.InventoryRestApi>(
        _i4.InventoryRestApi(gh<_i3.Dio>(instanceName: 'dataDio')));
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => externalModules.prefs,
      preResolve: true,
    );
    gh.singleton<_i6.UserRestAPI>(
        _i6.UserRestAPI(gh<_i3.Dio>(instanceName: 'ssoDio')));
    gh.singleton<_i7.UserSessionRestAPI>(
        _i7.UserSessionRestAPI(gh<_i3.Dio>(instanceName: 'ssoDio')));
    gh.singleton<_i8.InventoryRepository>(
        _i8.InventoryRepository(gh<_i4.InventoryRestApi>()));
    gh.singleton<_i9.UserRepository>(_i9.UserRepository(gh<_i6.UserRestAPI>()));
    gh.singleton<_i10.UserSessionRepository>(
        _i10.UserSessionRepository(gh<_i7.UserSessionRestAPI>()));
    return this;
  }
}

class _$ExternalModules extends _i11.ExternalModules {}
