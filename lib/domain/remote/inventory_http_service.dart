import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nsf_v2/domain/model/inventory/response/inventory_response.dart';
import 'package:retrofit/retrofit.dart';

part 'inventory_http_service.g.dart';

@singleton
@RestApi()
abstract class InventoryRestApi {
  @factoryMethod
  factory InventoryRestApi(@Named('dataDio') Dio dio) = _InventoryRestApi;

  @GET("/inventory")
  Future<HttpResponse<List<InventoryResponse>>> getInventoryData(); 

}