// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageData _$ImageDataFromJson(Map<String, dynamic> json) {
  return _ImageData.fromJson(json);
}

/// @nodoc
mixin _$ImageData {
  String? get contentType => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDataCopyWith<ImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDataCopyWith<$Res> {
  factory $ImageDataCopyWith(ImageData value, $Res Function(ImageData) then) =
      _$ImageDataCopyWithImpl<$Res, ImageData>;
  @useResult
  $Res call({String? contentType, dynamic data});
}

/// @nodoc
class _$ImageDataCopyWithImpl<$Res, $Val extends ImageData>
    implements $ImageDataCopyWith<$Res> {
  _$ImageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageDataCopyWith<$Res> implements $ImageDataCopyWith<$Res> {
  factory _$$_ImageDataCopyWith(
          _$_ImageData value, $Res Function(_$_ImageData) then) =
      __$$_ImageDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? contentType, dynamic data});
}

/// @nodoc
class __$$_ImageDataCopyWithImpl<$Res>
    extends _$ImageDataCopyWithImpl<$Res, _$_ImageData>
    implements _$$_ImageDataCopyWith<$Res> {
  __$$_ImageDataCopyWithImpl(
      _$_ImageData _value, $Res Function(_$_ImageData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ImageData(
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageData implements _ImageData {
  const _$_ImageData({this.contentType, this.data});

  factory _$_ImageData.fromJson(Map<String, dynamic> json) =>
      _$$_ImageDataFromJson(json);

  @override
  final String? contentType;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'ImageData(contentType: $contentType, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageData &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, contentType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageDataCopyWith<_$_ImageData> get copyWith =>
      __$$_ImageDataCopyWithImpl<_$_ImageData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageDataToJson(
      this,
    );
  }
}

abstract class _ImageData implements ImageData {
  const factory _ImageData({final String? contentType, final dynamic data}) =
      _$_ImageData;

  factory _ImageData.fromJson(Map<String, dynamic> json) =
      _$_ImageData.fromJson;

  @override
  String? get contentType;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$_ImageDataCopyWith<_$_ImageData> get copyWith =>
      throw _privateConstructorUsedError;
}
