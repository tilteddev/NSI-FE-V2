
import 'package:nsf_v2/application/di.dart';
import 'package:nsf_v2/application/domain/api_state.dart';
import 'package:nsf_v2/application/service/external_services.dart';
import 'package:retrofit/dio.dart';

class BaseRepository<T> {
  final ExternalServices externalServices = getIt.get<ExternalServices>();

  List<int> successCodes = [200, 201, 202, 203, 204, 205, 206, 207, 208, 226];

  ApiState<T> parseHttpResponse(HttpResponse<T> response) {
    if(successCodes.contains(response.response.statusCode)) {
      return ApiState.complete(response.data);
    } 

    return ApiState.error(response.response.statusMessage);
  }

  Future<ApiState<T>> call(Future<HttpResponse<T>> apiCall, {Function? errorCallback}) {
    return apiCall
      .then((value) => ApiState.complete(value.data))
      .onError((error, stackTrace) => ApiState.error(error)
    );
  }
}