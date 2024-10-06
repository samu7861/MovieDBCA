// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../modules/home/data/datasource/movies_datasource.dart' as _i336;
import '../../modules/home/data/repositories/movie_repository_impl.dart'
    as _i439;
import '../../modules/home/domain/repositories/movie_repository.dart' as _i946;
import '../../modules/home/domain/usecases/movies_usecase.dart' as _i1027;
import '../../modules/home/presentation/bloc/home_bloc/home_bloc.dart' as _i844;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i844.HomeBloc>(() => _i844.HomeBloc());
    gh.factory<_i336.IMoviesDatasource>(() => _i336.MoviesDatasourceImpl());
    gh.factory<_i946.IMovieRepository>(() => _i439.MovieRepositoryImpl(
        iMoviesDatasource: gh<_i336.IMoviesDatasource>()));
    gh.factory<_i1027.GetNowPlayingUsecase>(() => _i1027.GetNowPlayingUsecase(
        iMovieRepository: gh<_i946.IMovieRepository>()));
    gh.factory<_i1027.GetUpcomingUsecase>(() => _i1027.GetUpcomingUsecase(
        iMovieRepository: gh<_i946.IMovieRepository>()));
    gh.factory<_i1027.GetTopRatedUsecase>(() => _i1027.GetTopRatedUsecase(
        iMovieRepository: gh<_i946.IMovieRepository>()));
    gh.factory<_i1027.SearchMovieUsecase>(() => _i1027.SearchMovieUsecase(
        iMovieRepository: gh<_i946.IMovieRepository>()));
    return this;
  }
}
