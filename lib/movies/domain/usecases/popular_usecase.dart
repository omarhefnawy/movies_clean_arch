import 'package:dartz/dartz.dart';
import 'package:movies/core/error/failer.dart';
import 'package:movies/movies/domain/entity/movies.dart';
import 'package:movies/movies/domain/repo/movies_repo.dart';

class PopularUseCase {
  final MoviesRepo repo;
  PopularUseCase({required this.repo});
  Future<Either<Faileur, List<Movies>>> execute() async {
    return await repo.popular();
  }
}
