import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyRegistered() = EmailAlreadyRegistered;
  const factory AuthFailure.usernameTaken() = UsernameTaken;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  const factory AuthFailure.connectionError() = ConnectionError;
  const factory AuthFailure.unknownError() = UnknownError;
}
