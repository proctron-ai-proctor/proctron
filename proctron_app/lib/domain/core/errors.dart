import 'package:proctron_app/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    String errorMsg = "Encountered a ValueFailure at an unrecoverable point.\n"
        "Details: $valueFailure\n"
        "Terminating.";
    return errorMsg;
  }
}
