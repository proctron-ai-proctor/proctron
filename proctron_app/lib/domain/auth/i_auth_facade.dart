import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:proctron_app/domain/auth/auth_failures.dart';
import 'package:proctron_app/domain/auth/entities.dart';
import 'package:proctron_app/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithCredentials({
    required Username username,
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Option<User>> getLoggedInUser();

  Future<void> signOut();
}
