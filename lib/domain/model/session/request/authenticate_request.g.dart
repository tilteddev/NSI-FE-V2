// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticateRequest _$AuthenticateRequestFromJson(Map<String, dynamic> json) =>
    AuthenticateRequest(
      username: json['username'] as String,
      password: json['password'] as String,
      deviceId: json['deviceId'] as String,
    );

Map<String, dynamic> _$AuthenticateRequestToJson(
        AuthenticateRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'deviceId': instance.deviceId,
    };
