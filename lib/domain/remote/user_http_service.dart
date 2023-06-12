import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nsf_v2/application/domain/dio_provider.dart';
import 'package:nsf_v2/domain/model/users/user.dart';
import 'package:retrofit/retrofit.dart';

part 'user_http_service.g.dart';

@RestApi()
abstract class UserRestAPI {
  factory UserRestAPI(Dio dio) = _UserRestAPI;

  @GET("/users")
  Future<HttpResponse<List<User>>> getUsers(); 

}

@singleton
class UserHttpService extends _UserRestAPI {
  UserHttpService(@singleton DioProvider dioProvider): super(dioProvider.instance);
}