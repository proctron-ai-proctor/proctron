import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proctron_app/domain/auth/value_objects.dart';

part 'entities.freezed.dart';

@freezed
class User with _$User {
  static const usernameKey = 'username';
  static const emailKey = 'emailAddress';
  static const roleKey = 'role';
  static const tokenKey = 'token';
  static const tokenExpirationTimeKey = 'tokenExpirationTime';

  const factory User({
    required Username username,
    required EmailAddress emailAddress,
    required Role role,
    required String token,
    required DateTime tokenExpirationTime,
    required String otpVerificationPayload,
  }) = _User;

  const User._();
}
