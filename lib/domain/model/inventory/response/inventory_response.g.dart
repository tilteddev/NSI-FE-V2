// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryResponse _$InventoryResponseFromJson(Map<String, dynamic> json) =>
    InventoryResponse(
      buyPriceDate: json['buyPriceDate'] as String?,
      buyPriceType: json['buyPriceType'] as String?,
      buyPrice: json['buyPrice'] as String?,
      id: json['_id'] as String?,
      image: json['image'] == null
          ? null
          : ImageData.fromJson(json['image'] as Map<String, dynamic>),
      imageFilename: json['imageFilename'] as String?,
      itemCode: json['itemCode'] as String?,
      itemName: json['itemName'] as String?,
      pair: json['pair'] as String?,
      sellBulkPrice: json['sellBulkPrice'] as String?,
      sellPrice: json['sellPrice'] as String?,
      specificSellPrices: (json['specificSellPrices'] as List<dynamic>?)
          ?.map((e) => SpecificSellPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      supplier: json['supplier'] as String?,
      usage: json['usage'] as String?,
    );

Map<String, dynamic> _$InventoryResponseToJson(InventoryResponse instance) =>
    <String, dynamic>{
      'itemCode': instance.itemCode,
      'itemName': instance.itemName,
      'usage': instance.usage,
      'pair': instance.pair,
      'buyPrice': instance.buyPrice,
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

ImageData _$ImageDataFromJson(Map<String, dynamic> json) => ImageData(
      contentType: json['contentType'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$ImageDataToJson(ImageData instance) => <String, dynamic>{
      'contentType': instance.contentType,
      'data': instance.data,
    };

SpecificSellPrice _$SpecificSellPriceFromJson(Map<String, dynamic> json) =>
    SpecificSellPrice(
      buyerName: json['buyerName'] as String?,
      sellBulkPrice: json['sellBulkPrice'] as String?,
      sellPrice: json['sellPrice'] as String?,
    );

Map<String, dynamic> _$SpecificSellPriceToJson(SpecificSellPrice instance) =>
    <String, dynamic>{
      'buyerName': instance.buyerName,
      'sellPrice': instance.sellPrice,
      'sellBulkPrice': instance.sellBulkPrice,
    };
