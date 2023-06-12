import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class ExternalServices {
  late SharedPreferences _sharedPreferences;

  ExternalServices() {
    loadExternalServices();
  }

  Future<void> loadExternalServices() async{
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  SharedPreferences get sharedPreferences => _sharedPreferences;

  String get accessToken => _sharedPreferences.getString('at') ?? '';

  void setAccessToken(String at) {
    _sharedPreferences.setString('at', at);
  }

  String get refreshToken => _sharedPreferences.getString('rt') ?? '';

  void setRefreshToken(String rt) {
    _sharedPreferences.setString('rt', rt);
  }
}