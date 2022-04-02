import 'package:dartz/dartz.dart';
import 'package:proctron_app/domain/user/entities.dart';

abstract class IUserRepository {
  Future<Option<User>> getLoggedInUser();
  Future<Option<User>> getUnverifiedUserDetails();
  Future<void> saveSession(User user);
  Future<void> saveUnverifiedUserDetails(User user);
}
