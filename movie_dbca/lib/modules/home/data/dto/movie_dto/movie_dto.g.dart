// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDtoImpl _$$MovieDtoImplFromJson(Map<String, dynamic> json) =>
    _$MovieDtoImpl(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      genreIds: (json['genre_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] == null
          ? null
          : DateTime.parse(json['release_date'] as String),
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: (json['vote_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MovieDtoImplToJson(_$MovieDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('adult', instance.adult);
  writeNotNull('backdrop_path', instance.backdropPath);
  writeNotNull('genre_ids', instance.genreIds);
  writeNotNull('id', instance.id);
  writeNotNull('original_language', instance.originalLanguage);
  writeNotNull('original_title', instance.originalTitle);
  writeNotNull('overview', instance.overview);
  writeNotNull('popularity', instance.popularity);
  writeNotNull('poster_path', instance.posterPath);
  writeNotNull('release_date', instance.releaseDate?.toIso8601String());
  writeNotNull('title', instance.title);
  writeNotNull('video', instance.video);
  writeNotNull('vote_average', instance.voteAverage);
  writeNotNull('vote_count', instance.voteCount);
  return val;
}
