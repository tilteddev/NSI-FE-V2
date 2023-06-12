import 'package:flutter/material.dart';
import 'package:nsf_v2/application/di.dart';
import 'package:nsf_v2/application/service/external_services.dart';
import 'package:stacked/stacked.dart';

class ScreenBaseViewModel extends BaseViewModel {
  final ExternalServices _externalServices = getIt.get<ExternalServices>();

  final BuildContext context;

  ScreenBaseViewModel(this.context);
  
  String get accessToken => _externalServices.accessToken;

  Future<void> setAccessToken(String accessToken) async {
    _externalServices.setAccessToken(accessToken);
  }

  String get refreshToken => _externalServices.refreshToken;
  
  void setRefreshToken(String refreshToken) {
    _externalServices.setRefreshToken(refreshToken);
  }
}