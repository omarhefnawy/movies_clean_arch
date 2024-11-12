import 'package:dartz/dartz.dart';
import 'package:movies/core/error/failer.dart';
import 'package:movies/movies/domain/entity/movies.dart';

abstract class MoviesRepo {
  Future<Either<Failure, List<Movies>>> nowPlaying();
  Future<Either<Failure, List<Movies>>> popular();
  Future<Either<Failure, List<Movies>>> topRated();
}
