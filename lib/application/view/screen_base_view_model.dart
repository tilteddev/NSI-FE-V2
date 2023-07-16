import 'package:flutter/material.dart';
import 'package:nsf_v2/application/di/di.dart';
import 'package:nsf_v2/application/service/external_services.dart';
import 'package:stacked/stacked.dart';

class ScreenBaseViewModel extends BaseViewModel {

  final BuildContext context;

  ScreenBaseViewModel(this.context);
  
  String get accessToken => ExternalServices.instance.accessToken;

  Future<void> setAccessToken(String accessToken) async {
    ExternalServices.instance.setAccessToken(accessToken);
  }

  String get refreshToken => ExternalServices.instance.refreshToken;
  
  void setRefreshToken(String refreshToken) {
    ExternalServices.instance.setRefreshToken(refreshToken);
  }
}