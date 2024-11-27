import 'package:dartz/dartz.dart';
import 'package:movies/core/error/failer.dart';
import 'package:movies/movies/domain/entity/movies.dart';
import 'package:movies/movies/domain/repo/movies_repo.dart';

class NowPlayingUseCase {
  final MoviesRepo repo;
  NowPlayingUseCase({required this.repo});
  Future<Either<Failure, List<Movies>>> execute() async {
    return await repo.nowPlaying();
  }
}
