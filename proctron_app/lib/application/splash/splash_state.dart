part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    required String host,
    required String port,
    required bool addressIsSet,
    required User? user,
  }) = _SplashState;

  factory SplashState.initial() => const SplashState(
        host: '',
        port: '',
        addressIsSet: false,
        user: null,
      );
}
