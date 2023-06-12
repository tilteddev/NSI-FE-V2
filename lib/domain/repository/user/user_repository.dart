
import 'package:injectable/injectable.dart';
import 'package:nsf_v2/application/domain/api_state.dart';
import 'package:nsf_v2/domain/model/users/user.dart';
import 'package:nsf_v2/domain/remote/user_http_service.dart';
import 'package:nsf_v2/application/domain/base_repository.dart';

@singleton
class UserRepository extends BaseRepository<List<User>>{
  final UserHttpService _userRestAPI;

  UserRepository(@singleton this._userRestAPI);

  Future<ApiState<List<User>>> getAllUsers() async{
    return parseHttpResponse(await _userRestAPI.getUsers());
  }
}