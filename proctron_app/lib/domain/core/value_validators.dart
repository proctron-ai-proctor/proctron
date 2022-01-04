import 'package:dartz/dartz.dart';
import 'package:proctron_app/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateUsername(String input) {
  // source: https://stackoverflow.com/questions/12018245/regular-expression-to-validate-username
  const usernameRegex =
      r"^(?=.{3,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$";

  if (RegExp(usernameRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsername(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  // source: https://regexr.com/2rhq7
  const emailAddressRegex =
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";

  if (RegExp(emailAddressRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}
