import 'package:json_annotation/json_annotation.dart';

part 'refresh_token_request.g.dart';

@JsonSerializable()
class RefreshTokenRequest {
  final String refreshToken;
  final String did;

  RefreshTokenRequest({required this.refreshToken, required this.did});

  factory RefreshTokenRequest.fromJson(Map<String, dynamic> json) => _$RefreshTokenRequestFromJson(json);
  Map<String, dynamic> toJson() => _$RefreshTokenRequestToJson(this);
}