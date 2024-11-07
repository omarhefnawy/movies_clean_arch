import 'package:movies/movies/domain/entity/movies.dart';
import 'package:movies/movies/domain/repo/movies_repo.dart';

class PopularUseCase {
  final MoviesRepo repo;
  PopularUseCase({required this.repo});
  Future<List<Movies>> execute() async {
    return await repo.popular();
  }
}
