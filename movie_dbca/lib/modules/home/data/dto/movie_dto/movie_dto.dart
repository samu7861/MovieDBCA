import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_dto.g.dart';
part 'movie_dto.freezed.dart';

@Freezed(
  copyWith: false,
)
class MovieDto with _$MovieDto {
  @JsonSerializable(includeIfNull: false, fieldRename: FieldRename.snake)
  const factory MovieDto({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) = _MovieDto;

  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);
}
