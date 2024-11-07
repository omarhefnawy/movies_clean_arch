import 'package:movies/movies/domain/entity/movies.dart';

abstract class MoviesRepo {
  Future<List<Movies>> nowPlaying();
  Future<List<Movies>> popular();
  Future<List<Movies>> topRated();
}
