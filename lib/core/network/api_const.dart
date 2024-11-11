class ApiConst {
  // the whole one https://api.themoviedb.org/3/movie/top_rated?api_key=04799c25450575272750e5d1fa73a5c1
  static const String baseUrl = "https://api.themoviedb.org/3/";
  static const String apiKey = "04799c25450575272750e5d1fa73a5c1";
  static const String movieNowPlaying =
      "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String moviePopular = "$baseUrl/movie/popular?api_key=$apiKey";
  static const String movieTopRated =
      "$baseUrl/movie/top_rated?api_key=$apiKey";
}
