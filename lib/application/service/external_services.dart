import 'package:nsf_v2/application/di/di.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ExternalServices {
  static ExternalServices instance = ExternalServices._();
  
  SharedPreferences _sharedPreferences = getIt.get<SharedPreferences>();

  ExternalServices._() {
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

  Future<void> clearKeys() async {
    await _sharedPreferences.clear();
  }

  String get username => _sharedPreferences.getString('username') ?? '';

  void setUsername(String username) {
    _sharedPreferences.setString('username', username);
  }
}