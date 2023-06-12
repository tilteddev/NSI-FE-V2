// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InventoryResponse _$InventoryResponseFromJson(Map<String, dynamic> json) {
  return _InventoryResponse.fromJson(json);
}

/// @nodoc
mixin _$InventoryResponse {
  String get itemCode => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  String? get usage => throw _privateConstructorUsedError;
  String? get pair => throw _privateConstructorUsedError;
  String? get buyprice => throw _privateConstructorUsedError;
  String? get buyPriceType => throw _privateConstructorUsedError;
  String? get buyPriceDate => throw _privateConstructorUsedError;
  String? get sellPrice => throw _privateConstructorUsedError;
  String? get sellBulkPrice => throw _privateConstructorUsedError;
  String? get supplier => throw _privateConstructorUsedError;
  String? get imageFilename => throw _privateConstructorUsedError;
  ImageData? get image => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  List<SpecificSellPrice>? get specificSellPrices =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryResponseCopyWith<InventoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryResponseCopyWith<$Res> {
  factory $InventoryResponseCopyWith(
          InventoryResponse value, $Res Function(InventoryResponse) then) =
      _$InventoryResponseCopyWithImpl<$Res, InventoryResponse>;
  @useResult
  $Res call(
      {String itemCode,
      String itemName,
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
      @JsonKey(name: '_id') String id,
      List<SpecificSellPrice>? specificSellPrices});

  $ImageDataCopyWith<$Res>? get image;
}

/// @nodoc
class _$InventoryResponseCopyWithImpl<$Res, $Val extends InventoryResponse>
    implements $InventoryResponseCopyWith<$Res> {
  _$InventoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCode = null,
    Object? itemName = null,
    Object? usage = freezed,
    Object? pair = freezed,
    Object? buyprice = freezed,
    Object? buyPriceType = freezed,
    Object? buyPriceDate = freezed,
    Object? sellPrice = freezed,
    Object? sellBulkPrice = freezed,
    Object? supplier = freezed,
    Object? imageFilename = freezed,
    Object? image = freezed,
    Object? id = null,
    Object? specificSellPrices = freezed,
  }) {
    return _then(_value.copyWith(
      itemCode: null == itemCode
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as String?,
      pair: freezed == pair
          ? _value.pair
          : pair // ignore: cast_nullable_to_non_nullable
              as String?,
      buyprice: freezed == buyprice
          ? _value.buyprice
          : buyprice // ignore: cast_nullable_to_non_nullable
              as String?,
      buyPriceType: freezed == buyPriceType
          ? _value.buyPriceType
          : buyPriceType // ignore: cast_nullable_to_non_nullable
              as String?,
      buyPriceDate: freezed == buyPriceDate
          ? _value.buyPriceDate
          : buyPriceDate // ignore: cast_nullable_to_non_nullable
              as String?,
      sellPrice: freezed == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      sellBulkPrice: freezed == sellBulkPrice
          ? _value.sellBulkPrice
          : sellBulkPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      supplier: freezed == supplier
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFilename: freezed == imageFilename
          ? _value.imageFilename
          : imageFilename // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageData?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      specificSellPrices: freezed == specificSellPrices
          ? _value.specificSellPrices
          : specificSellPrices // ignore: cast_nullable_to_non_nullable
              as List<SpecificSellPrice>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageDataCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageDataCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InventoryResponseCopyWith<$Res>
    implements $InventoryResponseCopyWith<$Res> {
  factory _$$_InventoryResponseCopyWith(_$_InventoryResponse value,
          $Res Function(_$_InventoryResponse) then) =
      __$$_InventoryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemCode,
      String itemName,
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
      @JsonKey(name: '_id') String id,
      List<SpecificSellPrice>? specificSellPrices});

  @override
  $ImageDataCopyWith<$Res>? get image;
}

/// @nodoc
class __$$_InventoryResponseCopyWithImpl<$Res>
    extends _$InventoryResponseCopyWithImpl<$Res, _$_InventoryResponse>
    implements _$$_InventoryResponseCopyWith<$Res> {
  __$$_InventoryResponseCopyWithImpl(
      _$_InventoryResponse _value, $Res Function(_$_InventoryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCode = null,
    Object? itemName = null,
    Object? usage = freezed,
    Object? pair = freezed,
    Object? buyprice = freezed,
    Object? buyPriceType = freezed,
    Object? buyPriceDate = freezed,
    Object? sellPrice = freezed,
    Object? sellBulkPrice = freezed,
    Object? supplier = freezed,
    Object? imageFilename = freezed,
    Object? image = freezed,
    Object? id = null,
    Object? specificSellPrices = freezed,
  }) {
    return _then(_$_InventoryResponse(
      itemCode: null == itemCode
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as String?,
      pair: freezed == pair
          ? _value.pair
          : pair // ignore: cast_nullable_to_non_nullable
              as String?,
      buyprice: freezed == buyprice
          ? _value.buyprice
          : buyprice // ignore: cast_nullable_to_non_nullable
              as String?,
      buyPriceType: freezed == buyPriceType
          ? _value.buyPriceType
          : buyPriceType // ignore: cast_nullable_to_non_nullable
              as String?,
      buyPriceDate: freezed == buyPriceDate
          ? _value.buyPriceDate
          : buyPriceDate // ignore: cast_nullable_to_non_nullable
              as String?,
      sellPrice: freezed == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      sellBulkPrice: freezed == sellBulkPrice
          ? _value.sellBulkPrice
          : sellBulkPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      supplier: freezed == supplier
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFilename: freezed == imageFilename
          ? _value.imageFilename
          : imageFilename // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageData?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      specificSellPrices: freezed == specificSellPrices
          ? _value._specificSellPrices
          : specificSellPrices // ignore: cast_nullable_to_non_nullable
              as List<SpecificSellPrice>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InventoryResponse implements _InventoryResponse {
  const _$_InventoryResponse(
      {required this.itemCode,
      required this.itemName,
      this.usage,
      this.pair,
      this.buyprice,
      this.buyPriceType,
      this.buyPriceDate,
      this.sellPrice,
      this.sellBulkPrice,
      this.supplier,
      this.imageFilename,
      this.image,
      @JsonKey(name: '_id') required this.id,
      final List<SpecificSellPrice>? specificSellPrices})
      : _specificSellPrices = specificSellPrices;

  factory _$_InventoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_InventoryResponseFromJson(json);

  @override
  final String itemCode;
  @override
  final String itemName;
  @override
  final String? usage;
  @override
  final String? pair;
  @override
  final String? buyprice;
  @override
  final String? buyPriceType;
  @override
  final String? buyPriceDate;
  @override
  final String? sellPrice;
  @override
  final String? sellBulkPrice;
  @override
  final String? supplier;
  @override
  final String? imageFilename;
  @override
  final ImageData? image;
  @override
  @JsonKey(name: '_id')
  final String id;
  final List<SpecificSellPrice>? _specificSellPrices;
  @override
  List<SpecificSellPrice>? get specificSellPrices {
    final value = _specificSellPrices;
    if (value == null) return null;
    if (_specificSellPrices is EqualUnmodifiableListView)
      return _specificSellPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InventoryResponse(itemCode: $itemCode, itemName: $itemName, usage: $usage, pair: $pair, buyprice: $buyprice, buyPriceType: $buyPriceType, buyPriceDate: $buyPriceDate, sellPrice: $sellPrice, sellBulkPrice: $sellBulkPrice, supplier: $supplier, imageFilename: $imageFilename, image: $image, id: $id, specificSellPrices: $specificSellPrices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InventoryResponse &&
            (identical(other.itemCode, itemCode) ||
                other.itemCode == itemCode) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.pair, pair) || other.pair == pair) &&
            (identical(other.buyprice, buyprice) ||
                other.buyprice == buyprice) &&
            (identical(other.buyPriceType, buyPriceType) ||
                other.buyPriceType == buyPriceType) &&
            (identical(other.buyPriceDate, buyPriceDate) ||
                other.buyPriceDate == buyPriceDate) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice) &&
            (identical(other.sellBulkPrice, sellBulkPrice) ||
                other.sellBulkPrice == sellBulkPrice) &&
            (identical(other.supplier, supplier) ||
                other.supplier == supplier) &&
            (identical(other.imageFilename, imageFilename) ||
                other.imageFilename == imageFilename) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._specificSellPrices, _specificSellPrices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itemCode,
      itemName,
      usage,
      pair,
      buyprice,
      buyPriceType,
      buyPriceDate,
      sellPrice,
      sellBulkPrice,
      supplier,
      imageFilename,
      image,
      id,
      const DeepCollectionEquality().hash(_specificSellPrices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InventoryResponseCopyWith<_$_InventoryResponse> get copyWith =>
      __$$_InventoryResponseCopyWithImpl<_$_InventoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InventoryResponseToJson(
      this,
    );
  }
}

abstract class _InventoryResponse implements InventoryResponse {
  const factory _InventoryResponse(
          {required final String itemCode,
          required final String itemName,
          final String? usage,
          final String? pair,
          final String? buyprice,
          final String? buyPriceType,
          final String? buyPriceDate,
          final String? sellPrice,
          final String? sellBulkPrice,
          final String? supplier,
          final String? imageFilename,
          final ImageData? image,
          @JsonKey(name: '_id') required final String id,
          final List<SpecificSellPrice>? specificSellPrices}) =
      _$_InventoryResponse;

  factory _InventoryResponse.fromJson(Map<String, dynamic> json) =
      _$_InventoryResponse.fromJson;

  @override
  String get itemCode;
  @override
  String get itemName;
  @override
  String? get usage;
  @override
  String? get pair;
  @override
  String? get buyprice;
  @override
  String? get buyPriceType;
  @override
  String? get buyPriceDate;
  @override
  String? get sellPrice;
  @override
  String? get sellBulkPrice;
  @override
  String? get supplier;
  @override
  String? get imageFilename;
  @override
  ImageData? get image;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  List<SpecificSellPrice>? get specificSellPrices;
  @override
  @JsonKey(ignore: true)
  _$$_InventoryResponseCopyWith<_$_InventoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
