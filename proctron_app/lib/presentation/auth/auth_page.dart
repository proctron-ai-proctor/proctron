import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proctron_app/application/auth/auth_form/auth_form_bloc.dart';
import 'package:proctron_app/injection.dart';
import 'package:proctron_app/presentation/auth/widgets/auth_form.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth'),
      ),
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        behavior: HitTestBehavior.translucent,
        child: BlocProvider(
          create: (context) => getIt<AuthFormBloc>(),
          child: const AuthForm(),
        ),
      ),
    );
  }
}
