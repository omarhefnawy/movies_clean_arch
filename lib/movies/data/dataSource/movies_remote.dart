import 'package:dio/dio.dart';
import 'package:movies/core/error/exceptions.dart';
import 'package:movies/core/network/api_const.dart';
import 'package:movies/core/network/error_models/movie_error.dart';
import 'package:movies/movies/data/model/movies_model.dart';

abstract class MoviesRemoteDataSource {
  Future<List<MoviesModel>> getNowPlaying();
  Future<List<MoviesModel>> getPopular();
  Future<List<MoviesModel>> gettopRated();
}

class GetRemoteUsingDio extends MoviesRemoteDataSource {
  final dio = Dio();
  @override
  Future<List<MoviesModel>> getNowPlaying() async {
    return await _getMovies(ApiConst.movieNowPlaying);
  }

  @override
  Future<List<MoviesModel>> getPopular() async {
    return await _getMovies(ApiConst.moviePopular);
  }

  @override
  Future<List<MoviesModel>> gettopRated() async {
    return await _getMovies(ApiConst.movieTopRated);
  }

  Future<List<MoviesModel>> _getMovies(String url) async {
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        return List<MoviesModel>.from((response.data['results'] as List)
            .map((element) => MoviesModel.fromJson(element)));
      } else {
        print('Error: Server returned status code ${response.statusCode}');
        throw ServerException(movieError: MovieError.fromJson(response.data));
      }
    } catch (e) {
      if (e is DioError) {
        print('DioError: ${e.message}');
        if (e.response != null) {
          print('Response: ${e.response?.data}');
        }
      } //end if

      else {
        print('Exception: $e');
      }
      throw Exception("Unhandled exception: $e");
    }
  }
}
