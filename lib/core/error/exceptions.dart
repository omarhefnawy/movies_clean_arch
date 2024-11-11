import 'package:movies/core/network/error_models/movie_error.dart';

class ServerException {
  final MovieError movieError;
  ServerException({required this.movieError});
}
