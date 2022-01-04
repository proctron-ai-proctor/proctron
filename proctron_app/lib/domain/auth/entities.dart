import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proctron_app/domain/auth/value_objects.dart';

part 'entities.freezed.dart';

@freezed
class User with _$User {
  static const usernameKey = 'username';
  static const emailKey = 'emailAddress';

  const factory User({
    required Username username,
    required EmailAddress emailAddress,
  }) = _User;

  const User._();
}
