// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogoutRequest _$LogoutRequestFromJson(Map<String, dynamic> json) =>
    LogoutRequest(
      accessToken: json['accessToken'] as String,
      did: json['did'] as String,
    );

Map<String, dynamic> _$LogoutRequestToJson(LogoutRequest instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'did': instance.did,
    };
