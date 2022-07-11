import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proctron_app/application/splash/splash_bloc.dart';
import 'package:proctron_app/injection.dart';
import 'package:proctron_app/presentation/splash/splash_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SplashBloc>()
        ..add(
          const SplashEvent.userRequested(),
        ),
      child: const SplashWidget(),
    );
  }
}
