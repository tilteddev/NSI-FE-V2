
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nsf_v2/application/domain/api_state.dart';
import 'package:nsf_v2/domain/model/session/request/authenticate_request.dart';
import 'package:nsf_v2/domain/model/session/response/authenticate_response.dart';
import 'package:nsf_v2/application/domain/base_repository.dart';
import 'package:nsf_v2/domain/remote/user_session_http_service.dart';
import 'package:retrofit/dio.dart';

@singleton
class UserSessionRepository extends BaseRepository<AuthenticateResponse>{
  final UserSessionRestAPI _userSessionRestAPI;

  UserSessionRepository(@singleton this._userSessionRestAPI);

  Future<ApiState<AuthenticateResponse>> login(String username, String password) async {
    HttpResponse<AuthenticateResponse> httpResponse;

    try {
      httpResponse = await _userSessionRestAPI.auth(AuthenticateRequest(username: username, password: password, deviceId: 'abcd'));
      return parseHttpResponse(httpResponse);
    } on DioError catch (e){
      return Future.value(ApiState.error(e.message));
    }
  }
}