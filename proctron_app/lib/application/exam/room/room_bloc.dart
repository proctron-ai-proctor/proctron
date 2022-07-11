import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:googleapis/admin/directory_v1.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:proctron_app/domain/user/i_user_repository.dart';
import 'package:proctron_app/infrastructure/core/address_module.dart';
import 'package:proctron_app/injection.dart';
import 'package:http/http.dart' as http;
import 'package:proctron_app/infrastructure/exam/exam_dtos.dart';

part 'room_bloc.freezed.dart';
part 'room_event.dart';
part 'room_state.dart';

@injectable
class RoomBloc extends Bloc<RoomEvent, RoomState> {
  final IUserRepository _userRepository;

  RoomBloc(this._userRepository) : super(RoomState.initial()) {
    on<RoomEvent>(
      (event, emit) => event.map(
        allottedTimeChanged: (e) => emit(
          state.copyWith(allottedTime: e.allottedTime),
        ),
        maxScoreChanged: (e) => emit(
          state.copyWith(maxScore: e.maxScore),
        ),
        formIdChanged: (e) => emit(
          state.copyWith(formId: e.formId),
        ),
        submitPressed: (e) => _setup(emit),
      ),
    );
  }

  Future<void> _setup(Emitter<RoomState> emit) async {
    final authUrl =
        getIt.get<Address>(instanceName: Address.keyExamServer).toString();
    final createEndpoint = "examiner/create-credentials";

    final user = (await _userRepository.getLoggedInUser())
        .fold(() => null, (user) => user);

    final createUrl = Uri.http(authUrl, createEndpoint);
    print(createUrl);
    final dto = CreateRoomDto(
      allotedTime: state.allottedTime.toString(),
      maxScore: state.maxScore.toString(),
      formId: state.formId,
      email: user!.emailAddress.getOrCrash(),
    ).toJson();
    final response = await http.post(
      createUrl,
      body: dto,
      headers: {
        'authorization': 'Bearer ${user.token}',
      },
    );

    print(dto);
    print(user.token);
    print(response.statusCode);

    print('sent');

    final examId =
        (jsonDecode(response.body) as Map<String, dynamic>)['examId'];
    print(examId);

    emit(state.copyWith(isDone: true));
  }
}
