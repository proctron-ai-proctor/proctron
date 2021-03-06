import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proctron_app/application/auth/auth_bloc.dart';
import 'package:proctron_app/application/splash/splash_bloc.dart';
import 'package:proctron_app/injection.dart';
import 'package:proctron_app/presentation/routes/app_router.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (context) =>
              getIt<SplashBloc>()..add(const SplashEvent.userRequested()),
        ),
      ],
      child: MaterialApp.router(
        title: 'Proctron',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
