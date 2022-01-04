import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'package:proctron_app/domain/auth/auth_failures.dart';
import 'package:proctron_app/domain/auth/entities.dart';
import 'package:proctron_app/domain/auth/i_auth_facade.dart';
import 'package:proctron_app/domain/auth/value_objects.dart';
import 'package:proctron_app/infrastructure/auth/auth_dtos.dart';
import 'package:proctron_app/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IAuthFacade)
class ProctronAuthFacade implements IAuthFacade {
  final _authUrl = "10.0.2.2:3000";
  final _registerEndpoint = "users/register";
  final _loginEndpoint = "users/login";

  @override
  Future<Either<AuthFailure, Unit>> registerWithCredentials({
    required Username username,
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final usernameStr = username.getOrCrash();
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      final registerUrl = Uri.http(_authUrl, _registerEndpoint);
      final registerDto = RegisterDto(
        name: usernameStr,
        email: emailStr,
        password: passwordStr,
      );

      final response = await http.post(
        registerUrl,
        body: registerDto.toJson(),
      );
      final registerResponseDto = RegisterResponseDto.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);

      switch (response.statusCode) {
        // 200
        case HttpStatus.ok:
          final user = User(
            username: username,
            emailAddress: emailAddress,
          );
          saveSession(user);
          return right(unit);
        // 409
        case HttpStatus.conflict:
          return left(const AuthFailure.emailAlreadyRegistered());
        // 500
        case HttpStatus.internalServerError:
          return left(const AuthFailure.serverError());

        default:
          log(
            "Unkown status code was received during user registration.",
            name: "ProctronAuthFacade.StatusCodeUnknown",
          );
          return left(const AuthFailure.unknownError());
      }
    } on TimeoutException {
      return left(const AuthFailure.connectionError());
    } on SocketException {
      return left(const AuthFailure.connectionError());
    } catch (e) {
      log(
        "Exception during user registration: $e",
        name: "ProctronAuthFacade.Unkown",
      );
      return left(const AuthFailure.unknownError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      final loginUrl = Uri.http(_authUrl, _loginEndpoint);
      final loginDto = LoginDto(
        email: emailStr,
        password: passwordStr,
      );

      final response = await http.post(
        loginUrl,
        body: loginDto.toJson(),
      );
      final loginResponseDto = LoginResponseDto.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);

      switch (response.statusCode) {
        // 200
        case HttpStatus.ok:
          final respMessageDto = SuccessfulLoginResponseMessageDto.fromJson(
              loginResponseDto.message as Map<String, dynamic>);
          final user = User(
            username: Username(respMessageDto.name),
            emailAddress: EmailAddress(respMessageDto.email),
          );
          saveSession(user);
          return right(unit);
        // 401
        case HttpStatus.unauthorized:
        // 404
        case HttpStatus.notFound:
          return left(const AuthFailure.invalidEmailAndPasswordCombination());
        // 500
        case HttpStatus.internalServerError:
          return left(const AuthFailure.serverError());

        default:
          log(
            "Unkown status code was received during user login.",
            name: "ProctronAuthFacade.StatusCodeUnknown",
          );
          return left(const AuthFailure.unknownError());
      }
    } on TimeoutException {
      return left(const AuthFailure.connectionError());
    } on SocketException catch (e) {
      print(e);
      return left(const AuthFailure.connectionError());
    } catch (e) {
      log(
        "Exception during user login: $e",
        name: "ProctronAuthFacade.Unkown",
      );
      return left(const AuthFailure.unknownError());
    }
  }

  @override
  Future<Option<User>> getLoggedInUser() async {
    final prefs = await getIt.getAsync<SharedPreferences>();

    if (prefs.containsKey(User.usernameKey) &&
        prefs.containsKey(User.emailKey)) {
      final user = User(
        username: Username(prefs.getString(User.usernameKey) ?? ''),
        emailAddress: EmailAddress(prefs.getString(User.usernameKey) ?? ''),
      );
      return some(user);
    } else {
      return none();
    }
  }

  @override
  Future<void> signOut() async {
    final prefs = await getIt.getAsync<SharedPreferences>();

    prefs.remove(User.usernameKey);
    prefs.remove(User.emailKey);
  }

  Future<void> saveSession(User user) async {
    final prefs = await getIt.getAsync<SharedPreferences>();

    prefs.setString(User.usernameKey, user.username.getOrCrash());
    prefs.setString(User.emailKey, user.emailAddress.getOrCrash());
  }
}
