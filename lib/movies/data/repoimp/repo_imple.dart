import 'package:dartz/dartz.dart';
import 'package:movies/core/error/exceptions.dart';
import 'package:movies/core/error/failer.dart';
import 'package:movies/movies/data/dataSource/movies_remote.dart';
import 'package:movies/movies/domain/entity/movies.dart';
import 'package:movies/movies/domain/repo/movies_repo.dart';

class MoviesRepoImpl extends MoviesRepo {
  final MoviesRemoteDataSource movieSource;
  MoviesRepoImpl(this.movieSource);
  @override
  Future<Either<Failure, List<Movies>>> nowPlaying() async {
    try {
      final result = await movieSource.getNowPlaying();
      if (result != null) {
        return Right(result);
      } else {
        return Left(ServerFailure("No movies found"));
      }
    } on ServerException catch (fail) {
      return Left(ServerFailure(fail.movieError.status_message));
    } catch (e) {
      print(e.toString());
      return Left(ServerFailure("An unexpected error occurred: $e"));
    }
  }

  @override
  Future<Either<Failure, List<Movies>>> popular() async {
    try {
      final result = await movieSource.getPopular();
      if (result != null) {
        return Right(result);
      } else {
        return Left(ServerFailure("No movies found"));
      }
    } on ServerException catch (fail) {
      return Left(ServerFailure(fail.movieError.status_message));
    } catch (e) {
      return Left(ServerFailure("An unexpected error occurred: $e"));
    }
  }

  @override
  Future<Either<Failure, List<Movies>>> topRated() async {
    try {
      final result = await movieSource.getTopRated();
      if (result != null) {
        return Right(result);
      } else {
        return Left(ServerFailure("No movies found"));
      }
    } on ServerException catch (fail) {
      return Left(ServerFailure(fail.movieError.status_message));
    } catch (e) {
      return Left(ServerFailure("An unexpected error occurred: $e"));
    }
  }
}
