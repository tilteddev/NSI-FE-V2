// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InventoryResponse _$$_InventoryResponseFromJson(Map<String, dynamic> json) =>
    _$_InventoryResponse(
      itemCode: json['itemCode'] as String,
      itemName: json['itemName'] as String,
      usage: json['usage'] as String?,
      pair: json['pair'] as String?,
      buyprice: json['buyprice'] as String?,
      buyPriceType: json['buyPriceType'] as String?,
      buyPriceDate: json['buyPriceDate'] as String?,
      sellPrice: json['sellPrice'] as String?,
      sellBulkPrice: json['sellBulkPrice'] as String?,
      supplier: json['supplier'] as String?,
      imageFilename: json['imageFilename'] as String?,
      image: json['image'] == null
          ? null
          : ImageData.fromJson(json['image'] as Map<String, dynamic>),
      id: json['_id'] as String,
      specificSellPrices: (json['specificSellPrices'] as List<dynamic>?)
          ?.map((e) => SpecificSellPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InventoryResponseToJson(
        _$_InventoryResponse instance) =>
    <String, dynamic>{
      'itemCode': instance.itemCode,
      'itemName': instance.itemName,
      'usage': instance.usage,
      'pair': instance.pair,
      'buyprice': instance.buyprice,
      'buyPriceType': instance.buyPriceType,
      'buyPriceDate': instance.buyPriceDate,
      'sellPrice': instance.sellPrice,
      'sellBulkPrice': instance.sellBulkPrice,
      'supplier': instance.supplier,
      'imageFilename': instance.imageFilename,
      'image': instance.image?.toJson(),
      '_id': instance.id,
      'specificSellPrices':
          instance.specificSellPrices?.map((e) => e.toJson()).toList(),
    };
