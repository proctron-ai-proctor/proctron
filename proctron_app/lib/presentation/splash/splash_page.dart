import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proctron_app/application/auth/auth_bloc.dart';
import 'package:proctron_app/presentation/routes/app_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      resizeToAvoidBottomInset: true,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (_) => {},
            authenticated: (_) => FlushbarHelper.createInformation(
              message: 'Authenticated successfully!',
            )..show(context),
            unauthenticated: (_) {
              AutoRouter.of(context).push(const AuthRoute());
            },
          );
        },
        child: Center(
          child: TextButton(
            onPressed: () => BlocProvider.of<AuthBloc>(context)
                .add(const AuthEvent.signedOut()),
            child: const Text('Signout'),
          ),
        ),
      ),
    );
  }
}
