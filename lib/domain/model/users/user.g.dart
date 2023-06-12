// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      admin: json['admin'] as bool?,
      lastLoginTime: json['lastLoginTime'] as String?,
      apiKey: json['apiKey'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'admin': instance.admin,
      'lastLoginTime': instance.lastLoginTime,
      'apiKey': instance.apiKey,
    };
