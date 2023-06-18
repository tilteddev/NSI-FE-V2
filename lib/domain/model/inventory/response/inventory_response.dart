import 'package:json_annotation/json_annotation.dart';
import 'package:nsf_v2/application/annotations/nsi_data.dart';

part 'inventory_response.g.dart';

@JsonSerializable()
@nsidata
class InventoryResponse {
  @Data('Kode Barang')
  final String? itemCode;

  @Data('Nama Barang')
  final String? itemName;

  @Data('Pemakaian')
  final String? usage;

  @Data('Satuan')
  final String? pair;

  @Data('Harga Modal')
  final String? buyprice;

  @Data('Jenis Modal')
  final String? buyPriceType;

  @Data('Tanggal Modal')
  final String? buyPriceDate;

  @Data('Harga Jual Ecer')
  final String? sellPrice;

  @Data('Harga Jual Grosir')
  final String? sellBulkPrice;

  @Data('Supplier')
  final String? supplier;
  
  final String? imageFilename;
  final ImageData? image;
    
  @JsonKey(name: '_id') 
  final String? id;
  final List<SpecificSellPrice>? specificSellPrices;

  InventoryResponse(
      {this.buyPriceDate,
      this.buyPriceType,
      this.buyprice,
      this.id,
      this.image,
      this.imageFilename,
      this.itemCode,
      this.itemName,
      this.pair,
      this.sellBulkPrice,
      this.sellPrice,
      this.specificSellPrices,
      this.supplier,
      this.usage});

  factory InventoryResponse.fromJson(Map<String, dynamic> json) => _$InventoryResponseFromJson(json);
  Map<String, dynamic> toJson() => _$InventoryResponseToJson(this);
}

@JsonSerializable()
class ImageData {
  final String? contentType;
  final dynamic data;

  ImageData({this.contentType, this.data});

  factory ImageData.fromJson(Map<String, dynamic> json) => _$ImageDataFromJson(json);
  Map<String, dynamic> toJson() => _$ImageDataToJson(this);
}

@JsonSerializable()
class SpecificSellPrice {
  final String? buyerName;
  final String? sellPrice;
  final String? sellBulkPrice;

  SpecificSellPrice({this.buyerName, this.sellBulkPrice, this.sellPrice});

  factory SpecificSellPrice.fromJson(Map<String, dynamic> json) => _$SpecificSellPriceFromJson(json);
  Map<String, dynamic> toJson() => _$SpecificSellPriceToJson(this);
}