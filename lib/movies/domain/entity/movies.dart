import 'package:equatable/equatable.dart';

class Movies extends Equatable {
  final int id;
  final List<int> genre_ids;
  final String original_title;
  final String title;
  final String overview;
  final dynamic popularity;
  final String poster_path;
  final String release_date;
  final dynamic vote_average;
  Movies({
    required this.id,
    required this.title,
    required this.genre_ids,
    required this.overview,
    required this.original_title,
    required this.popularity,
    required this.poster_path,
    required this.release_date,
    required this.vote_average,
  });
  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        genre_ids,
        overview,
        original_title,
        popularity,
        poster_path,
        release_date,
        vote_average
      ];
}
