import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:proctron_app/presentation/auth/auth_page.dart';
import 'package:proctron_app/presentation/splash/splash_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: AuthPage),
  ],
)
class AppRouter extends _$AppRouter {}
