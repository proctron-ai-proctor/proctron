// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import 'application/auth/auth_bloc.dart' as _i6;
import 'application/auth/auth_form/auth_form_bloc.dart' as _i7;
import 'domain/auth/i_auth_facade.dart' as _i3;
import 'infrastructure/auth/proctron_auth_facade.dart' as _i4;
import 'infrastructure/core/storage_injectable_module.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final storageInjectableModule = _$StorageInjectableModule();
  gh.lazySingleton<_i3.IAuthFacade>(() => _i4.ProctronAuthFacade());
  gh.lazySingletonAsync<_i5.SharedPreferences>(
      () => storageInjectableModule.prefs);
  gh.factory<_i6.AuthBloc>(() => _i6.AuthBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i7.AuthFormBloc>(() => _i7.AuthFormBloc(get<_i3.IAuthFacade>()));
  return get;
}

class _$StorageInjectableModule extends _i8.StorageInjectableModule {}
