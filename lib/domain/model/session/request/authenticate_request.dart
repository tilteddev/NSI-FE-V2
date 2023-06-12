import 'package:json_annotation/json_annotation.dart';

part 'authenticate_request.g.dart';

@JsonSerializable()
class AuthenticateRequest {

  final String username;
  final String password;
  final String deviceId;

  AuthenticateRequest({required this.username, required this.password, required this.deviceId});

  factory AuthenticateRequest.fromJson(Map<String, dynamic> json) => _$AuthenticateRequestFromJson(json);
  Map<String, dynamic> toJson() => _$AuthenticateRequestToJson(this);
}