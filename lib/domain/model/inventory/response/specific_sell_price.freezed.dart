// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specific_sell_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecificSellPrice _$SpecificSellPriceFromJson(Map<String, dynamic> json) {
  return _SpecificSellPrice.fromJson(json);
}

/// @nodoc
mixin _$SpecificSellPrice {
  String? get buyerName => throw _privateConstructorUsedError;
  String? get sellPrice => throw _privateConstructorUsedError;
  String? get sellBulkPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecificSellPriceCopyWith<SpecificSellPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecificSellPriceCopyWith<$Res> {
  factory $SpecificSellPriceCopyWith(
          SpecificSellPrice value, $Res Function(SpecificSellPrice) then) =
      _$SpecificSellPriceCopyWithImpl<$Res, SpecificSellPrice>;
  @useResult
  $Res call({String? buyerName, String? sellPrice, String? sellBulkPrice});
}

/// @nodoc
class _$SpecificSellPriceCopyWithImpl<$Res, $Val extends SpecificSellPrice>
    implements $SpecificSellPriceCopyWith<$Res> {
  _$SpecificSellPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyerName = freezed,
    Object? sellPrice = freezed,
    Object? sellBulkPrice = freezed,
  }) {
    return _then(_value.copyWith(
      buyerName: freezed == buyerName
          ? _value.buyerName
          : buyerName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellPrice: freezed == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      sellBulkPrice: freezed == sellBulkPrice
          ? _value.sellBulkPrice
          : sellBulkPrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpecificSellPriceCopyWith<$Res>
    implements $SpecificSellPriceCopyWith<$Res> {
  factory _$$_SpecificSellPriceCopyWith(_$_SpecificSellPrice value,
          $Res Function(_$_SpecificSellPrice) then) =
      __$$_SpecificSellPriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? buyerName, String? sellPrice, String? sellBulkPrice});
}

/// @nodoc
class __$$_SpecificSellPriceCopyWithImpl<$Res>
    extends _$SpecificSellPriceCopyWithImpl<$Res, _$_SpecificSellPrice>
    implements _$$_SpecificSellPriceCopyWith<$Res> {
  __$$_SpecificSellPriceCopyWithImpl(
      _$_SpecificSellPrice _value, $Res Function(_$_SpecificSellPrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyerName = freezed,
    Object? sellPrice = freezed,
    Object? sellBulkPrice = freezed,
  }) {
    return _then(_$_SpecificSellPrice(
      buyerName: freezed == buyerName
          ? _value.buyerName
          : buyerName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellPrice: freezed == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      sellBulkPrice: freezed == sellBulkPrice
          ? _value.sellBulkPrice
          : sellBulkPrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpecificSellPrice implements _SpecificSellPrice {
  const _$_SpecificSellPrice(
      {this.buyerName, this.sellPrice, this.sellBulkPrice});

  factory _$_SpecificSellPrice.fromJson(Map<String, dynamic> json) =>
      _$$_SpecificSellPriceFromJson(json);

  @override
  final String? buyerName;
  @override
  final String? sellPrice;
  @override
  final String? sellBulkPrice;

  @override
  String toString() {
    return 'SpecificSellPrice(buyerName: $buyerName, sellPrice: $sellPrice, sellBulkPrice: $sellBulkPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpecificSellPrice &&
            (identical(other.buyerName, buyerName) ||
                other.buyerName == buyerName) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice) &&
            (identical(other.sellBulkPrice, sellBulkPrice) ||
                other.sellBulkPrice == sellBulkPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, buyerName, sellPrice, sellBulkPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpecificSellPriceCopyWith<_$_SpecificSellPrice> get copyWith =>
      __$$_SpecificSellPriceCopyWithImpl<_$_SpecificSellPrice>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecificSellPriceToJson(
      this,
    );
  }
}

abstract class _SpecificSellPrice implements SpecificSellPrice {
  const factory _SpecificSellPrice(
      {final String? buyerName,
      final String? sellPrice,
      final String? sellBulkPrice}) = _$_SpecificSellPrice;

  factory _SpecificSellPrice.fromJson(Map<String, dynamic> json) =
      _$_SpecificSellPrice.fromJson;

  @override
  String? get buyerName;
  @override
  String? get sellPrice;
  @override
  String? get sellBulkPrice;
  @override
  @JsonKey(ignore: true)
  _$$_SpecificSellPriceCopyWith<_$_SpecificSellPrice> get copyWith =>
      throw _privateConstructorUsedError;
}
