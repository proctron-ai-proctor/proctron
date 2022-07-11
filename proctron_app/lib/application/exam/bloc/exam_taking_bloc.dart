import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:proctron_app/domain/core/i_signaling.dart';
import 'package:proctron_app/domain/exam/entities.dart';
import 'package:proctron_app/domain/user/entities.dart';
import 'package:proctron_app/domain/user/i_user_repository.dart';
import 'package:proctron_app/infrastructure/core/address_module.dart';
import 'package:proctron_app/injection.dart';
import 'package:socket_io_client/socket_io_client.dart';

part 'exam_taking_bloc.freezed.dart';
part 'exam_taking_event.dart';
part 'exam_taking_state.dart';

@injectable
class ExamTakingBloc extends Bloc<ExamTakingEvent, ExamTakingState> {
  final IUserRepository _userRepository;
  final ISignaling _signaling;
  final String _socketAddress =
      getIt.get<Address>(instanceName: Address.keyExamSocket).toString();
  final StreamController<bool> _socketController = StreamController<bool>();

  ExamTakingBloc(this._userRepository, this._signaling)
      : super(ExamTakingState.initial()) {
    on<ExamTakingEvent>(
      (event, emit) => event.map(
        opened: (_) => _setup(emit),
        startPressed: (_) => _startExam(emit),
        exitPressed: (_) => _exitExam(emit),
        socketConnected: (_) => _finishInitialSetup(emit),
        socketDisconnected: (_) => _haltExam(emit),
        socketErrorOccurred: (_) => _haltExam(emit),
        answerChanged: (evt) => _changeAnswer(evt, emit),
      ),
    );
  }

  Future<void> _setup(Emitter<ExamTakingState> emit) async {
    debugPrint('opened');
    await _fetchUser(emit);
    await _setupSocketConnection(
      emit,
      onError: (e) {
        debugPrint('socketError: ${e.toString()}');
        add(const ExamTakingEvent.socketErrorOccurred());
      },
      onConnect: (_) {
        debugPrint('Connected to socket');
        add(const ExamTakingEvent.socketConnected());
      },
      onDisconnect: (_) {
        debugPrint('Disconnected from socket');
        add(const ExamTakingEvent.socketDisconnected());
      },
    );

    final questions = [
      const Question(
        qId: 0,
        qText: 'What?',
        qType: QuestionType.short,
        qAnswer: null,
        qChoices: [],
      ),
      const Question(
        qId: 1,
        qText: 'How?',
        qType: QuestionType.mcq,
        qAnswer: null,
        qChoices: [
          QuestionChoice(slot: 0, text: 'idk'),
          QuestionChoice(slot: 1, text: 'somehow'),
          QuestionChoice(slot: 2, text: "i can't"),
        ],
      ),
      const Question(
        qId: 2,
        qText: 'Where?',
        qType: QuestionType.long,
        qAnswer: null,
        qChoices: [],
      ),
      const Question(
        qId: 3,
        qText: 'When?',
        qType: QuestionType.short,
        qAnswer: null,
        qChoices: [],
      ),
    ];

    emit(
      state.copyWith(
        isInitialSetupDone: true,
        exam: Exam(
          id: '0',
          questions: questions,
          createdOn: DateTime.now(),
        ),
      ),
    );

    // wait until connection
    await _socketController.stream.firstWhere((connected) => connected);
  }

  Future<void> _startExam(Emitter<ExamTakingState> emit) async {
    //  final authUrl =
    //       getIt.get<Address>(instanceName: Address.keyExamServer).toString();
    //   final createEndpoint = "examinee/fetch-questions";

    //   final user = (await _userRepository.getLoggedInUser())
    //       .fold(() => null, (user) => user);

    //   final createUrl = Uri.http(authUrl, createEndpoint);
    //   print(createUrl);
    //   final response = await http.post(
    //     createUrl,
    //     body: {
    //       'credentials': '716-650a-6cc'
    //     },
    //     headers: {
    //       'authorization': 'Bearer ${user.token}',
    //     },
    //   );

    await _openMedia(emit);
    await _signaling.openUserMedia(state.localRenderer, state.remoteRenderer);
    await _signaling.createRoom();
    debugPrint('socketAddress: $_socketAddress');

    emit(state.copyWith(
      isMediaReady: true,
      hasExamStarted: true,
    ));
  }

  Future<void> _openMedia(Emitter<ExamTakingState> emit) async {
    await _signaling.openUserMedia(
      state.localRenderer,
      state.remoteRenderer,
    );
    debugPrint('media opened!!');
  }

  Future<void> _createRoom(Emitter<ExamTakingState> emit) async {
    await _signaling.createRoom();
  }

  Future<void> _exitExam(Emitter<ExamTakingState> emit) async {
    await _signaling.hangUp(state.localRenderer);

    emit(state.copyWith(
      didExit: true,
      isInitialSetupDone: false,
      isMediaReady: false,
      didFatalErrorOccur: false,
    ));
  }

  Future<void> _finishInitialSetup(Emitter<ExamTakingState> emit) async {
    emit(state.copyWith(isInitialSetupDone: true));
  }

  Future<void> _haltExam(Emitter<ExamTakingState> emit) async {
    debugPrint('Socket disconnected or error occurred, so halting exam.');
    await _exitExam(emit);
  }

  Future<void> _fetchUser(Emitter<ExamTakingState> emit) async {
    (await _userRepository.getLoggedInUser()).fold(
      () => null,
      (user) {
        emit(
          state.copyWith(user: user),
        );
      },
    );
  }

  Future<bool> _setupSocketConnection(
    Emitter<ExamTakingState> emit, {
    required Function(dynamic) onError,
    required Function(dynamic) onConnect,
    required Function(dynamic) onDisconnect,
  }) async {
    debugPrint('trying to connect to socket');
    debugPrint('USER: ${state.user}');
    debugPrint('ADDRESS: $_socketAddress');

    final socket = io(
      Uri.http(_socketAddress, '').toString(),
      OptionBuilder()
          .setTransports(['websocket'])
          .setQuery({'user': state.user?.emailAddress.getOrCrash()})
          .setAuth({
            'token': state.user?.token,
          })
          .enableForceNewConnection()
          .build(),
    );

    _signaling.setSocket(socket);

    socket.onError(onError);
    socket.onConnect(onConnect);
    socket.onDisconnect(onDisconnect);

    return socket.connected;
  }

  Future<void> _changeAnswer(
    AnswerChanged evt,
    Emitter<ExamTakingState> emit,
  ) async {
    final questions = state.exam!.questions;
    questions[evt.questionIndex] =
        questions[evt.questionIndex].copyWith(qAnswer: evt.answer);
    emit(
      state.copyWith(
        exam: state.exam!.copyWith(questions: questions),
      ),
    );
    debugPrint(state.exam!.questions.toString());
  }
}
