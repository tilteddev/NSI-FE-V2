
import 'package:json_annotation/json_annotation.dart';

part 'authenticate_response.g.dart';

@JsonSerializable()
class AuthenticateResponse {
  final String? accessToken;
  final String? refreshToken;

  AuthenticateResponse({this.accessToken, this.refreshToken});

  factory AuthenticateResponse.fromJson(Map<String, dynamic> json) => _$AuthenticateResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AuthenticateResponseToJson(this);
}