import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proctron_app/application/auth/auth_form/auth_form_bloc.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthFormBloc, AuthFormState>(
      listener: (context, state) {
        if (state.isSubmitting) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return Center(
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20),
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircularProgressIndicator(),
                        SizedBox(height: 20),
                        Text('Working on it..'),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }

        state.authFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (failure) {
              // popping the loading dialog if it is open
              if (!(ModalRoute.of(context)?.isCurrent ?? false)) {
                Navigator.of(context).pop();
              }

              FlushbarHelper.createError(
                message: failure.map(
                  serverError: (_) =>
                      'A server error occurred. Please try again.',
                  emailAlreadyRegistered: (_) =>
                      'This email is already registered. Did you mean to login?',
                  usernameTaken: (_) =>
                      'This username is already taken. Try another one.',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination.',
                  connectionError: (_) =>
                      'An error occurred while connecting to server. Please check your connection.',
                  unknownError: (_) =>
                      'An unknown error occurred. Please try again.',
                ),
              ).show(context);
            },
            (_) {
              // TODO: Implement navigation on successful auth
              // popping the loading dialog if it is open
              if (!(ModalRoute.of(context)?.isCurrent ?? false)) {
                Navigator.of(context).pop();
              }

              FlushbarHelper.createInformation(
                message: 'Authenticated successfully!',
              ).show(context);
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: constraints.maxWidth,
                    minHeight: constraints.maxHeight,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AuthFormFields(),
                      AuthFormActions(),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class AuthFormFields extends StatelessWidget {
  const AuthFormFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthFormBloc, AuthFormState>(builder: (context, state) {
      final bloc = BlocProvider.of<AuthFormBloc>(context);

      return Column(
        children: [
          if (bloc.state.isLoginMode)
            Container()
          else
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Username',
              ),
              autocorrect: false,
              initialValue: bloc.state.username.value.getOrElse(() => ''),
              onChanged: (value) => bloc.add(
                AuthFormEvent.usernameChanged(value),
              ),
              validator: (_) => bloc.state.username.value.fold(
                (f) => f.maybeMap(
                  invalidUsername: (_) => 'Invalid username',
                  orElse: () => null,
                ),
                (_) => null,
              ),
            ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText: 'Email',
            ),
            autocorrect: false,
            onChanged: (value) => bloc.add(
              AuthFormEvent.emailAddressChanged(value),
            ),
            validator: (_) => bloc.state.emailAddress.value.fold(
              (f) => f.maybeMap(
                invalidEmail: (_) => 'Invalid email',
                orElse: () => null,
              ),
              (_) => null,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.password),
              labelText: 'Password',
            ),
            autocorrect: false,
            obscureText: true,
            onChanged: (value) => bloc.add(
              AuthFormEvent.passwordChanged(value),
            ),
            validator: (_) => bloc.state.password.value.fold(
              (f) => f.maybeMap(
                invalidPassword: (_) => 'Invalid password',
                orElse: () => null,
              ),
              (_) => null,
            ),
          ),
        ],
      );
    });
  }
}

class AuthFormActions extends StatelessWidget {
  const AuthFormActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthFormBloc, AuthFormState>(builder: (context, state) {
      final bloc = BlocProvider.of<AuthFormBloc>(context);

      return Column(
        children: [
          TextButton(
            onPressed: () {
              FocusManager.instance.primaryFocus?.unfocus();
              if (bloc.state.isLoginMode) {
                bloc.add(const AuthFormEvent.loginPressed());
              } else {
                bloc.add(const AuthFormEvent.registerPressed());
              }
            },
            child: const Text("Submit"),
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    bloc.add(
                      const AuthFormEvent.switchToLoginPressed(),
                    );
                  },
                  child: const Text("LOGIN"),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    bloc.add(
                      const AuthFormEvent.switchToRegisterPressed(),
                    );
                  },
                  child: const Text("REGISTER"),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
