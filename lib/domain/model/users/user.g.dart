// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      admin: json['admin'] as String?,
      apiKey: json['apiKey'] as String?,
      id: json['id'] as String?,
      lastLoginTime: json['lastLoginTime'] as String?,
      password: json['password'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'admin': instance.admin,
      'lastLoginTime': instance.lastLoginTime,
      'apiKey': instance.apiKey,
    };
