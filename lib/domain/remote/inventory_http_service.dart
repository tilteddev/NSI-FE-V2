import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nsf_v2/application/domain/dio_provider.dart';
import 'package:nsf_v2/domain/model/inventory/response/inventory_response.dart';
import 'package:retrofit/retrofit.dart';

part 'inventory_http_service.g.dart';

@RestApi()
abstract class InventoryRestApi {
  factory InventoryRestApi(Dio dio) = _InventoryRestApi;

  @GET("/inventory")
  Future<HttpResponse<List<InventoryResponse>>> getInventoryData(
    @Header('accessToken') accessToken, 
    @Header('refreshToken') refreshToken
  ); 

}

@singleton
class InventoryHttpService extends _InventoryRestApi {
  InventoryHttpService(@singleton DioProvider dioProvider): super(dioProvider.instance);
}