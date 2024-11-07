import 'package:movies/movies/domain/entity/movies.dart';
import 'package:movies/movies/domain/repo/movies_repo.dart';

class TopRated {
  final MoviesRepo repo;
  TopRated({required this.repo});
  Future<List<Movies>> execute() async {
    return await repo.topRated();
  }
}
