import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proctron_app/application/auth/auth_bloc.dart';
import 'package:proctron_app/application/splash/splash_bloc.dart';
import 'package:proctron_app/domain/auth/value_objects.dart';
import 'package:proctron_app/infrastructure/core/address_module.dart';
import 'package:proctron_app/injection.dart';
import 'package:proctron_app/presentation/routes/app_router.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<SplashBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proctron'),
        actions: [
          IconButton(
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
                      SplashEvent.hostChanged(value),
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
                      SplashEvent.portChanged(value),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      bloc.add(
                        const SplashEvent.setAddressPressed(),
                      );
                    },
                    child: const Text('Set'),
                  ),
                ],
              ),
            ),
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      resizeToAvoidBottomInset: true,
      body: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.map(
                initial: (_) => null,
                loading: (_) => null,
                authenticated: (_) => null,
                unauthenticated: (_) {
                  AutoRouter.of(context).replace(const AuthRoute());
                },
              );
            },
          ),
          BlocListener<SplashBloc, SplashState>(
            listener: (context, state) {
              if (state.addressIsSet) {
                FlushbarHelper.createInformation(
                  message:
                      'Address set: ${getIt.get<Address>(instanceName: Address.keyExamSocket)}',
                );
              }
            },
          ),
        ],
        child: BlocBuilder<SplashBloc, SplashState>(
          builder: (context, state) {
            final bloc = BlocProvider.of<SplashBloc>(context);

            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (bloc.state.user?.role == Role.examinee)
                    TextButton(
                      onPressed: () => AutoRouter.of(context)
                          .replace(const ExamTakingRoute()),
                      child: const Text('Take exam'),
                    ),
                  if (bloc.state.user?.role == Role.examiner)
                    TextButton(
                      onPressed: () => AutoRouter.of(context)
                          .replace(const CreateRoomRoute()),
                      child: const Text('Create exam room'),
                    ),
                  if (bloc.state.user?.role == Role.examiner)
                    TextButton(
                      onPressed: () => AutoRouter.of(context)
                          .replace(const ExamTakingRoute()),
                      child: const Text('Edit exam'),
                    ),
                  TextButton(
                    onPressed: () => BlocProvider.of<AuthBloc>(context)
                        .add(const AuthEvent.signedOut()),
                    child: const Text('Signout'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
