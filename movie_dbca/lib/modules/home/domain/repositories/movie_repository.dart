import 'package:dartz/dartz.dart';

import 'package:movie_dbca/core/error/error.dart';
import 'package:movie_dbca/modules/home/domain/entities/movie_entity.dart';

abstract class IMovieRepository {
  Future<Either<Failure, List<MovieEntity>>> getNowPlaying({int page = 1});
  Future<Either<Failure, List<MovieEntity>>> getPopular({int page = 1});
  Future<Either<Failure, List<MovieEntity>>> getUpcoming({int page = 1});
  Future<Either<Failure, List<MovieEntity>>> getTopRated({int page = 1});
  Future<Either<Failure, List<MovieEntity>>> searchMovie({int page = 1});
}
