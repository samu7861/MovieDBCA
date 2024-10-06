import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_dbca/core/error/error.dart';
import 'package:movie_dbca/modules/home/data/datasource/movies_datasource.dart';
import 'package:movie_dbca/modules/home/data/mappers/movie_mapper.dart';

import 'package:movie_dbca/modules/home/domain/entities/movie_entity.dart';
import 'package:movie_dbca/modules/home/domain/repositories/movie_repository.dart';

import '../dto/movie_dto/movie_dto.dart';

@Injectable(as: IMovieRepository)
class MovieRepositoryImpl implements IMovieRepository {
  final IMoviesDatasource _iMoviesDatasource;

  MovieRepositoryImpl({
    required IMoviesDatasource iMoviesDatasource,
  }) : _iMoviesDatasource = iMoviesDatasource;

  @override
  Future<Either<Failure, List<MovieEntity>>> getNowPlaying(
      {int page = 1}) async {
    try {
      final List<MovieDto> data =
          await _iMoviesDatasource.getNowPlaying(page: page);
      return Right(
        data.map((dto) => MovieMapper.toEntity(dto)).toList(),
      );
    } on BaseClientException catch (e) {
      log(e.toString());
      if (e.type == 'SocketException') {
        return const Left(NetworkFailure());
      }
      if (e.type == 'TimeoutException') {
        return const Left(TimeOutFailure());
      }
      if (e.type == 'UnAuthorization') {
        return const Left(AuthFailure());
      }
      return Left(
        AnotherFailure(
          message: e.message ?? '',
          codeError: e.codeError ?? 0,
        ),
      );
    } catch (e) {
      log(e.toString());
      return const Left(AnotherFailure());
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getPopular({int page = 1}) {
    // TODO: implement getPopular
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getTopRated({int page = 1}) {
    // TODO: implement getTopRated
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getUpcoming({int page = 1}) {
    // TODO: implement getUpcoming
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> searchMovie({int page = 1}) {
    // TODO: implement searchMovie
    throw UnimplementedError();
  }
}
