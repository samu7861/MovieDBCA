import 'package:movie_dbca/modules/home/data/dto/movie_dto/movie_dto.dart';
import 'package:movie_dbca/modules/home/domain/entities/movie_entity.dart';

class MovieMapper {
  static MovieEntity toEntity(MovieDto? dto) {
    return MovieEntity(
      adult: dto?.adult,
      backdropPath: dto?.backdropPath != ''
          ? 'https://image.tmdb.org/t/p/w500${dto?.backdropPath}'
          : 'https://sd.keepcalms.com/i-w600/keep-calm-poster-not-found.jpg',
      genreIds: dto?.genreIds?.map((id) => id.toString()).toList(),
      id: dto?.id,
      originalLanguage: dto?.originalLanguage,
      originalTitle: dto?.originalTitle,
      overview: dto?.overview,
      popularity: dto?.popularity,
      posterPath: dto?.posterPath,
      releaseDate: dto?.releaseDate,
      title: dto?.title ?? '',
      video: dto?.video,
      voteAverage: dto?.voteAverage,
      voteCount: dto?.voteCount,
    );
  }

  static MovieDto toDto(MovieEntity entity) {
    return MovieDto(
      adult: entity.adult,
      backdropPath: entity.backdropPath,
      genreIds: entity.genreIds?.map((id) => int.parse(id)).toList(),
      id: entity.id,
      originalLanguage: entity.originalLanguage,
      originalTitle: entity.originalTitle,
      overview: entity.overview,
      popularity: entity.popularity,
      posterPath: entity.posterPath,
      releaseDate: entity.releaseDate,
      title: entity.title,
      video: entity.video,
      voteAverage: entity.voteAverage,
      voteCount: entity.voteCount,
    );
  }
}
