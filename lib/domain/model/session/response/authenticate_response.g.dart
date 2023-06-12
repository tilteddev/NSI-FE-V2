// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticateResponse _$$_AuthenticateResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AuthenticateResponse(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$_AuthenticateResponseToJson(
        _$_AuthenticateResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
