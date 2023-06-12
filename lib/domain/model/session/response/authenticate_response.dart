import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticate_response.freezed.dart';
part 'authenticate_response.g.dart';

@freezed
class AuthenticateResponse with _$AuthenticateResponse {
  const factory AuthenticateResponse({required String accessToken, required String refreshToken}) = _AuthenticateResponse;
  factory AuthenticateResponse.fromJson(Map<String, Object?> json) => _$AuthenticateResponseFromJson(json);
}
