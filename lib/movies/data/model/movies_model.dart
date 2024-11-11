import 'package:movies/movies/domain/entity/movies.dart';

class MoviesModel extends Movies {
  MoviesModel({
    required super.genre_ids,
    required super.id,
    required super.original_title,
    required super.overview,
    required super.popularity,
    required super.poster_path,
    required super.release_date,
    required super.title,
    required super.vote_average,
  });
  factory MoviesModel.fromJson(Map<String, dynamic> json) => MoviesModel(
        id: json['id'],
        title: json['title'],
        genre_ids: List<int>.from(json['genre_ids']),
        original_title: json['original_title'],
        overview: json['overview'],
        popularity: json['popularity'],
        poster_path: json['poster_path'],
        release_date: json['release_date'],
        vote_average: json['vote_average'],
      );
}
