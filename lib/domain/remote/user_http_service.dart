import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nsf_v2/domain/model/users/user.dart';
import 'package:retrofit/retrofit.dart';

part 'user_http_service.g.dart';

@singleton
@RestApi()
abstract class UserRestAPI {
  @factoryMethod
  factory UserRestAPI(@Named('ssoDio') Dio dio) = _UserRestAPI;

  @GET("/users")
  Future<HttpResponse<List<User>>> getUsers(); 

}