import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nsf_v2/domain/model/session/request/logout_request.dart';
import 'package:nsf_v2/domain/model/session/request/refresh_token_request.dart';
import 'package:nsf_v2/domain/model/session/response/authenticate_response.dart';
import 'package:nsf_v2/domain/model/session/request/authenticate_request.dart';
import 'package:retrofit/retrofit.dart';

part 'user_session_http_service.g.dart';

@singleton
@RestApi()
abstract class UserSessionRestAPI {
  @factoryMethod
  factory UserSessionRestAPI(@Named('ssoDio') Dio dio) = _UserSessionRestAPI;

  @POST("/authenticate")
  Future<HttpResponse<AuthenticateResponse>> auth(@Body() AuthenticateRequest request); 

  @POST("/refreshToken")
  Future<HttpResponse<AuthenticateResponse>> refreshToken(@Body() RefreshTokenRequest request); 

  @POST("/logout")
  Future<HttpResponse<dynamic>> logout(@Body() LogoutRequest request); 

}