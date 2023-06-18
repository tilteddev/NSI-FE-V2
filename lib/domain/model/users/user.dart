import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String? id;
  final String? username;
  final String? password;
  final String? admin;
  final String? lastLoginTime;
  final String? apiKey;

  User({this.admin, this.apiKey, this.id, this.lastLoginTime, this.password, this.username});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}