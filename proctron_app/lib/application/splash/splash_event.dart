part of 'splash_bloc.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.hostChanged(String host) = HostChanged;
  const factory SplashEvent.portChanged(String port) = PortChanged;
  const factory SplashEvent.setAddressPressed() = SetAddressPressed;
  const factory SplashEvent.userRequested() = UserRequested;
}
