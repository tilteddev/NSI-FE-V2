// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../domain/remote/inventory_http_service.dart' as _i5;
import '../domain/remote/user_http_service.dart' as _i7;
import '../domain/remote/user_session_http_service.dart' as _i9;
import '../domain/repository/inventory/inventory_repository.dart' as _i6;
import '../domain/repository/user/user_repository.dart' as _i8;
import '../domain/repository/user_session/user_session_repository.dart' as _i10;
import 'domain/dio_provider.dart' as _i3;
import 'service/external_services.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.DioProvider>(_i3.DioProvider());
    gh.singleton<_i4.ExternalServices>(_i4.ExternalServices());
    gh.singleton<_i5.InventoryHttpService>(
        _i5.InventoryHttpService(gh<_i3.DioProvider>()));
    gh.singleton<_i6.InventoryRepository>(
        _i6.InventoryRepository(gh<_i5.InventoryHttpService>()));
    gh.singleton<_i7.UserHttpService>(
        _i7.UserHttpService(gh<_i3.DioProvider>()));
    gh.singleton<_i8.UserRepository>(
        _i8.UserRepository(gh<_i7.UserHttpService>()));
    gh.singleton<_i9.UserSessionHttpService>(
        _i9.UserSessionHttpService(gh<_i3.DioProvider>()));
    gh.singleton<_i10.UserSessionRepository>(
        _i10.UserSessionRepository(gh<_i9.UserSessionHttpService>()));
    return this;
  }
}
