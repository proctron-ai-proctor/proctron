import 'package:dartz/dartz.dart';
import 'package:proctron_app/domain/auth/auth_failures.dart';
import 'package:proctron_app/domain/auth/otp_failures.dart';
import 'package:proctron_app/domain/auth/value_objects.dart';
import 'package:proctron_app/domain/user/entities.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, User>> registerWithCredentials({
    required Username username,
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, User>> loginWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<OtpFailure, Unit>> resendOtp({
    required String payload,
    required Function(String) onResend,
  });

  Future<Either<OtpFailure, Unit>> verifyOtp({
    required String email,
    required String otp,
    required String payload,
  });

  Future<void> signOut();
}
