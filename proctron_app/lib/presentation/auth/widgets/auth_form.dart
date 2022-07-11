import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proctron_app/application/auth/auth_form/auth_form_bloc.dart';
import 'package:proctron_app/domain/auth/value_objects.dart';
import 'package:proctron_app/presentation/auth/widgets/background_painter.dart';
import 'package:proctron_app/presentation/core/persistent_loading_wheel.dart';
import 'package:proctron_app/presentation/routes/app_router.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AuthFormBloc>(context);
    return BlocConsumer<AuthFormBloc, AuthFormState>(
      listener: (context, state) {
        if (state.isLoading) {
          pShowPersistentLoadingWheel(context);
        }

        if (state.addressIsSet) {
          FlushbarHelper.createInformation(
            message: 'Address set to: ${state.host}:${state.port}',
          ).show(context);
        }

        state.authFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (failure) {
              // popping the loading dialog if it is open
              pPopLoadingWheel(context);

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
              pPopLoadingWheel(context);

              FlushbarHelper.createInformation(
                message: 'Authenticated successfully!',
              ).show(context);

              if (state.isLoginMode) {
                AutoRouter.of(context).replace(const SplashRoute());
              } else {
                AutoRouter.of(context).replace(const EmailVerificationRoute());
              }
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
              final maxH = constraints.maxHeight;
              final maxW = constraints.maxWidth;
              return CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: () => showDialog(
                              context: context,
                              builder: (context) => SimpleDialog(
                                title: const Text('Set address'),
                                children: [
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      prefixIcon: Icon(Icons.person),
                                      labelText: 'Host',
                                    ),
                                    autocorrect: false,
                                    initialValue: bloc.state.host,
                                    onChanged: (value) => bloc.add(
                                      AuthFormEvent.hostChanged(value),
                                    ),
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      prefixIcon: Icon(Icons.person),
                                      labelText: 'Port',
                                    ),
                                    autocorrect: false,
                                    initialValue: bloc.state.port,
                                    onChanged: (value) => bloc.add(
                                      AuthFormEvent.portChanged(value),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      bloc.add(
                                        const AuthFormEvent.setAddressPressed(),
                                      );
                                    },
                                    child: const Text('Set'),
                                  ),
                                ],
                              ),
                            ),
                            icon: const Icon(Icons.info_outline),
                          ),
                        ),
                        SizedBox(height: maxH * 0.005),
                        SvgPicture.asset(
                          'assets/images/logo_with_title.svg',
                          width: maxW * 0.75,
                        ),
                        const Spacer(),
                        CustomPaint(
                          painter: BackgroundPainter(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(height: 50.0),
                              const Text(
                                'Authorization Required',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              const AuthFormFields(),
                              SizedBox(
                                height: maxH * 0.05,
                              ),
                              const AuthFormActions(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
    return BlocBuilder<AuthFormBloc, AuthFormState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<AuthFormBloc>(context);

        return Column(
          children: [
            if (!bloc.state.isLoginMode)
              SizedBox(
                width: 275.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.all(15.0),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.person),
                    labelText: 'Username',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
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
              ),
            if (!state.isLoginMode)
              const SizedBox(
                height: 15.0,
              ),
            SizedBox(
              width: 275.0,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.all(15.0),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.email),
                  labelText: 'Email',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
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
            ),
            const SizedBox(
              height: 15.0,
            ),
            SizedBox(
              width: 275.0,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.all(15.0),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.password),
                  labelText: 'Password',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
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
            ),
            if (!bloc.state.isLoginMode)
              const SizedBox(
                height: 15.0,
              ),
            if (!bloc.state.isLoginMode)
              SizedBox(
                width: 275.0,
                child: DropdownButtonFormField<Role>(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.pages),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.all(10.0),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: Role.examinee,
                      child: Text('Examinee'),
                    ),
                    DropdownMenuItem(
                      value: Role.examiner,
                      child: Text('Examiner'),
                    ),
                  ],
                  value: state.role,
                  onChanged: (role) => {
                    bloc.add(AuthFormEvent.roleChanged(role!)),
                  },
                ),
              ),
          ],
        );
      },
    );
  }
}

class AuthFormActions extends StatelessWidget {
  const AuthFormActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthFormBloc, AuthFormState>(
      builder: (context, state) {
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
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xFF474B5B),
                ),
                padding: MaterialStateProperty.all(const EdgeInsets.all(10.0)),
              ),
              child: const Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
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
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(color: Color(0xFF474B5B)),
                    ),
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
                    child: const Text(
                      "REGISTER",
                      style: TextStyle(color: Color(0xFF474B5B)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
