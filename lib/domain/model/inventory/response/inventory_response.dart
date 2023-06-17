import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nsf_v2/application/annotations/field_to_ui/field_to_ui_data.dart';
import 'package:nsf_v2/domain/model/inventory/response/specific_sell_price.dart';

import 'image_data.dart';

part 'inventory_response.freezed.dart';
part 'inventory_response.g.dart';

@freezed
class InventoryResponse with _$InventoryResponse {
  const factory InventoryResponse({
    required String itemCode, 
    required String itemName,
    String? usage,
    String? pair,
    String? buyprice,
    String? buyPriceType,
    String? buyPriceDate,
    String? sellPrice,
    String? sellBulkPrice,
    String? supplier,
    String? imageFilename,
    ImageData? image,
    @JsonKey(name: '_id') required String id,
    List<SpecificSellPrice>? specificSellPrices
  }) = _InventoryResponse;
  factory InventoryResponse.fromJson(Map<String, Object?> json) => _$InventoryResponseFromJson(json);

  
}


