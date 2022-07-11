part of 'room_bloc.dart';

@freezed
@immutable
class RoomEvent with _$RoomEvent {
  const factory RoomEvent.allottedTimeChanged(String allottedTime) =
      AllottedTimeChanged;
  const factory RoomEvent.maxScoreChanged(String maxScore) = MaxScoreChanged;
  const factory RoomEvent.formIdChanged(String formId) = FormIdChanged;
  const factory RoomEvent.submitPressed() = SubmitPressed;
}
