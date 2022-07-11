import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:googleapis/authorizedbuyersmarketplace/v1.dart';
import 'package:proctron_app/application/auth/auth_bloc.dart';
import 'package:proctron_app/application/exam/bloc/exam_taking_bloc.dart';
import 'package:proctron_app/application/exam/room/room_bloc.dart';
import 'package:proctron_app/domain/exam/entities.dart';
import 'package:proctron_app/injection.dart';
import 'package:proctron_app/presentation/core/persistent_loading_wheel.dart';
import 'package:proctron_app/presentation/exam/widgets/camera_widget.dart';
import 'package:proctron_app/presentation/exam/widgets/exam_actions.dart';
import 'package:proctron_app/presentation/exam/widgets/exam_sheet.dart';
import 'package:proctron_app/presentation/routes/app_router.dart';
import 'package:googleapis/forms/v1.dart';

class CreateRoomPage extends StatelessWidget {
  const CreateRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RoomBloc>(),
      child: const CreateRoomWidget(),
    );
  }
}

class CreateRoomWidget extends StatelessWidget {
  const CreateRoomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<RoomBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create exam room'),
      ),
      resizeToAvoidBottomInset: true,
      body: BlocListener<RoomBloc, RoomState>(
        listener: (context, state) {
          print(state.isDone);
          if (state.isDone) {
            AutoRouter.of(context).replace(const SplashRoute());
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    prefixIcon: const Icon(Icons.alarm),
                    labelText: 'Allotted time',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  autocorrect: false,
                  initialValue: bloc.state.allottedTime.toString(),
                  onChanged: (value) => bloc.add(
                    RoomEvent.allottedTimeChanged(value),
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
                    prefixIcon: const Icon(Icons.numbers),
                    labelText: 'Max. score',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  autocorrect: false,
                  onChanged: (value) => bloc.add(
                    RoomEvent.maxScoreChanged(value),
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
                    labelText: 'Form ID',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) => bloc.add(
                    RoomEvent.formIdChanged(value),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  bloc.add(const RoomEvent.submitPressed());
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF474B5B),
                  ),
                  padding:
                      MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
