import 'package:freezed_annotation/freezed_annotation.dart';

part 'specific_sell_price.freezed.dart';
part 'specific_sell_price.g.dart';

@freezed
class SpecificSellPrice with _$SpecificSellPrice {
  const factory SpecificSellPrice({
    String? buyerName,
    String? sellPrice,
    String? sellBulkPrice
  }) = _SpecificSellPrice;

  factory SpecificSellPrice.fromJson(Map<String, Object?> json) => _$SpecificSellPriceFromJson(json);
}