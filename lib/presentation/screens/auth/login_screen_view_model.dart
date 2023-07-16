
import 'dart:convert';

import 'package:go_router/go_router.dart';
import 'package:nsf_v2/application/domain/api_state.dart';
import 'package:nsf_v2/application/di/di.dart';
import 'package:nsf_v2/application/service/external_services.dart';
import 'package:nsf_v2/application/view/screen_base_view_model.dart';
import 'package:nsf_v2/domain/model/session/response/authenticate_response.dart';
import 'package:nsf_v2/domain/repository/user_session/user_session_repository.dart';

class LoginScreenViewModel extends ScreenBaseViewModel {
  final UserSessionRepository _userSessionRepository = getIt.get<UserSessionRepository>();

  bool isPasswordVisible = false;
  String? username;
  String? password;
  bool showForm = false;  
  LoginScreenViewModel(super.context);

  void setPasswordVisible() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  void setUsernamePassword(bool isPassword, String value) {
    if(isPassword) {
      password = value;
    } else {
      username = value;
    }
  }

  void login() async{
    String encodedPass = base64.encode(utf8.encode(password ?? ''));
    ApiState<AuthenticateResponse> loginResponse = await _userSessionRepository.login(username ?? '', encodedPass);
    if(loginResponse.isError == false) {
      ExternalServices.instance.setUsername(username!);
      setAccessToken(loginResponse.data!.accessToken!);
      setRefreshToken(loginResponse.data!.refreshToken!);
      // ignore: use_build_context_synchronously
      context.replaceNamed('inventory_screen');
    }
  }
}
