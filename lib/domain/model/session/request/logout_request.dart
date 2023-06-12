import 'package:json_annotation/json_annotation.dart';

part 'logout_request.g.dart';

@JsonSerializable()
class LogoutRequest {
  final String accessToken;
  final String did;

  LogoutRequest({required this.accessToken, required this.did});

  factory LogoutRequest.fromJson(Map<String, dynamic> json) => _$LogoutRequestFromJson(json);
  Map<String, dynamic> toJson() => _$LogoutRequestToJson(this);
}