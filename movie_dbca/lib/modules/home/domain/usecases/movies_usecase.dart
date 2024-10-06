import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_dbca/core/error/error.dart';
import 'package:movie_dbca/core/usecase/usecase.dart';
import 'package:movie_dbca/modules/home/domain/entities/movie_entity.dart';
import 'package:movie_dbca/modules/home/domain/repositories/movie_repository.dart';

@Injectable()
class GetNowPlayingUsecase extends UseCase<List<MovieEntity>, String> {
  final IMovieRepository _iMovieRepository;

  GetNowPlayingUsecase({
    required IMovieRepository iMovieRepository,
  }) : _iMovieRepository = iMovieRepository;

  @override
  Future<Either<Failure, List<MovieEntity>>> call(String params) async {
    return await _iMovieRepository.getNowPlaying();
  }
}

@Injectable()
class GetUpcomingUsecase extends UseCase<List<MovieEntity>, String> {
  final IMovieRepository _iMovieRepository;

  GetUpcomingUsecase({
    required IMovieRepository iMovieRepository,
  }) : _iMovieRepository = iMovieRepository;

  @override
  Future<Either<Failure, List<MovieEntity>>> call(String params) async {
    return await _iMovieRepository.getUpcoming();
  }
}

@Injectable()
class GetTopRatedUsecase extends UseCase<List<MovieEntity>, String> {
  final IMovieRepository _iMovieRepository;

  GetTopRatedUsecase({
    required IMovieRepository iMovieRepository,
  }) : _iMovieRepository = iMovieRepository;

  @override
  Future<Either<Failure, List<MovieEntity>>> call(String params) async {
    return await _iMovieRepository.getTopRated();
  }
}

@Injectable()
class SearchMovieUsecase extends UseCase<List<MovieEntity>, String> {
  final IMovieRepository _iMovieRepository;

  SearchMovieUsecase({
    required IMovieRepository iMovieRepository,
  }) : _iMovieRepository = iMovieRepository;

  @override
  Future<Either<Failure, List<MovieEntity>>> call(String params) async {
    return await _iMovieRepository.searchMovie();
  }
}
