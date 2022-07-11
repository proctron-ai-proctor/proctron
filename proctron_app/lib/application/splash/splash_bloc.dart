import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:proctron_app/domain/user/entities.dart';
import 'package:proctron_app/domain/user/i_user_repository.dart';
import 'package:proctron_app/infrastructure/core/address_module.dart';
import 'package:proctron_app/injection.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final IUserRepository _userRepository;

  SplashBloc(this._userRepository) : super(SplashState.initial()) {
    on<SplashEvent>(
      (event, emit) => event.map(
        hostChanged: (e) => emit(
          state.copyWith(
            host: e.host,
            addressIsSet: false,
          ),
        ),
        portChanged: (e) => emit(
          state.copyWith(
            port: e.port,
            addressIsSet: false,
          ),
        ),
        setAddressPressed: (e) {
          if (state.host != '' && state.port != '') {
            getIt.allowReassignment = true;
            getIt.registerLazySingleton(
              () => Address(state.host, state.port),
              instanceName: Address.keyExamServer,
            );
            getIt.registerLazySingleton(
              () => Address(state.host, state.port),
              instanceName: Address.keyExamSocket,
            );
            debugPrint(
              'ADDRESS SET: ${getIt.get<Address>(instanceName: Address.keyExamServer)}',
            );
            debugPrint(
              'ADDRESS SET: ${getIt.get<Address>(instanceName: Address.keyExamSocket)}',
            );
            getIt.allowReassignment = false;
            return emit(state.copyWith(addressIsSet: true));
          }

          return emit(state.copyWith(addressIsSet: false));
        },
        userRequested: (e) async {
          final user = (await _userRepository.getLoggedInUser())
              .fold(() => null, (user) => user);
          debugPrint(
              'user: ${user?.username.getOrCrash()} - ${user?.role.toString()}');
          emit(state.copyWith(addressIsSet: true));
          return emit(state.copyWith(user: user, addressIsSet: false));
        },
      ),
    );
  }
}
