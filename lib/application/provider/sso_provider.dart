import 'package:flutter/foundation.dart';
import 'package:nsf_v2/application/di.dart';
import 'package:nsf_v2/application/service/external_services.dart';

class SsoProvider extends ChangeNotifier{
  final ExternalServices _externalServices = getIt.get<ExternalServices>();

  String accessToken = '';
  String refreshToken = '';

  void setAccessToken(String at) {
    accessToken = at;
    _externalServices.setAccessToken(at);
    notifyListeners();
  }

  void setRefreshToken(String rt) {
    refreshToken = rt;
    _externalServices.setRefreshToken(rt);
    notifyListeners();
  }
}