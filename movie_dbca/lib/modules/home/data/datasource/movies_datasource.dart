import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

import 'package:movie_dbca/modules/home/data/dto/movie_dto/movie_dto.dart';
import 'package:movie_dbca/config/constants/environment.dart';

abstract class IMoviesDatasource {
  Future<List<MovieDto>> getNowPlaying({int page = 1});
  Future<List<MovieDto>> getPopular({int page = 1});
  Future<List<MovieDto>> getUpcoming({int page = 1});
  Future<List<MovieDto>> getTopRated({int page = 1});
  Future<List<MovieDto>> searchMovie({int page = 1});
}

@Injectable(as: IMoviesDatasource)
class MoviesDatasourceImpl implements IMoviesDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': ConstEnvironment.theMovieDbKey,
        'language': 'es-MX'
      },
    ),
  );

  @override
  Future<List<MovieDto>> getNowPlaying({int page = 1}) async {
    try {
      final response = await dio.get(
        '/movie/now_playing',
        queryParameters: {'page': page},
      );

      return (response.data['results'] as List)
          .map((movie) => MovieDto.fromJson(movie))
          .toList();
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<MovieDto>> getPopular({int page = 1}) {
    // TODO: implement getPopular
    throw UnimplementedError();
  }

  @override
  Future<List<MovieDto>> getTopRated({int page = 1}) {
    // TODO: implement getTopRated
    throw UnimplementedError();
  }

  @override
  Future<List<MovieDto>> getUpcoming({int page = 1}) {
    // TODO: implement getUpcoming
    throw UnimplementedError();
  }

  @override
  Future<List<MovieDto>> searchMovie({int page = 1}) {
    // TODO: implement searchMovie
    throw UnimplementedError();
  }
}
