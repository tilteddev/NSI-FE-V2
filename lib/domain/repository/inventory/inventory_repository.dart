
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nsf_v2/application/domain/api_state.dart';
import 'package:nsf_v2/domain/model/inventory/response/inventory_response.dart';
import 'package:nsf_v2/domain/remote/inventory_http_service.dart';
import 'package:nsf_v2/application/domain/base_repository.dart';

@singleton
class InventoryRepository extends BaseRepository<List<InventoryResponse>>{
  final InventoryHttpService _inventoryRestApi;

  InventoryRepository(@singleton this._inventoryRestApi);

  Future<ApiState<List<InventoryResponse>>> getInventoryData() async {
    return await call(_inventoryRestApi.getInventoryData(externalServices.accessToken, externalServices.refreshToken));
  }
}