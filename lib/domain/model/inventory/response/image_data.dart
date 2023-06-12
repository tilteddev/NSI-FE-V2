
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_data.freezed.dart';
part 'image_data.g.dart';

@freezed
class ImageData with _$ImageData{
  const factory ImageData({String? contentType, dynamic data}) = _ImageData;

  factory ImageData.fromJson(Map<String, dynamic> json) => _$ImageDataFromJson(json);
}