part of 'room_bloc.dart';

@freezed
@immutable
class RoomState extends Equatable with _$RoomState {
  const factory RoomState({
    required String allottedTime,
    required String maxScore,
    required String formId,
    required bool isDone,
  }) = _RoomState;

  factory RoomState.initial() => const RoomState(
        allottedTime: '',
        maxScore: '',
        formId: '',
        isDone: false,
      );

  const RoomState._();

  @override
  List<Object?> get props => [allottedTime, maxScore, formId];
}
