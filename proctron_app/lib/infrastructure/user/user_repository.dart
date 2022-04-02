import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:proctron_app/domain/auth/value_objects.dart';
import 'package:proctron_app/domain/user/entities.dart';
import 'package:proctron_app/domain/user/i_user_repository.dart';
import 'package:proctron_app/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  User? unverifiedUser;

  @override
  Future<Option<User>> getLoggedInUser() async {
    final prefs = await getIt.getAsync<SharedPreferences>();

    if (prefs.containsKey(User.usernameKey) &&
        prefs.containsKey(User.emailKey) &&
        prefs.containsKey(User.tokenKey) &&
        prefs.containsKey(User.tokenExpirationTimeKey)) {
      final user = User(
        username: Username(prefs.getString(User.usernameKey) ?? ''),
        emailAddress: EmailAddress(prefs.getString(User.usernameKey) ?? ''),
        token: prefs.getString(User.tokenKey) ?? '',
        tokenExpirationTime: DateTime.parse(
          prefs.getString(User.tokenExpirationTimeKey) ?? '',
        ),
        otpVerificationPayload: '',
      );

      // session expired
      if (user.tokenExpirationTime.compareTo(DateTime.now()) <= 0) {
        return none();
      }

      return some(user);
    } else {
      return none();
    }
  }

  @override
  Future<Option<User>> getUnverifiedUserDetails() async =>
      unverifiedUser != null ? optionOf(unverifiedUser) : none();

  @override
  Future<void> saveSession(User user) async {
    final prefs = await getIt.getAsync<SharedPreferences>();

    prefs.setString(User.usernameKey, user.username.getOrCrash());
    prefs.setString(User.emailKey, user.emailAddress.getOrCrash());
    prefs.setString(User.tokenKey, user.token);
    prefs.setString(
      User.tokenExpirationTimeKey,
      user.tokenExpirationTime.toString(),
    );
  }

  @override
  Future<void> saveUnverifiedUserDetails(User user) async {
    unverifiedUser = user;
  }
}
