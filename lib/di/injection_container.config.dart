// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../module/data/local/content_local_data_source.dart' as _i4;
import '../module/data/network/content_remote_data_source.dart' as _i6;
import '../module/data/repository/content_datasource.dart' as _i8;
import '../module/domain/repository/content_local_repository.dart' as _i3;
import '../module/domain/repository/content_remote_repository.dart' as _i5;
import '../module/domain/repository/content_repository.dart' as _i7;
import '../module/domain/usecase/content_usecase.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.ContentLocalRepository>(_i4.ContentLocalDataSource());
  gh.singleton<_i5.ContentRemoteRepository>(_i6.ContentRemoteDataSource());
  gh.singleton<_i7.ContentRepository>(_i8.ContentDataSource(
      get<_i3.ContentLocalRepository>(), get<_i5.ContentRemoteRepository>()));
  gh.factory<_i9.ContentUseCase>(
      () => _i9.ContentUseCase(get<_i7.ContentRepository>()));
  return get;
}
