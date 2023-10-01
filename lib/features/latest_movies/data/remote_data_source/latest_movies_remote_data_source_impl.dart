import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_tentwenty_app/core/api_keys.dart';
import 'package:movie_tentwenty_app/core/server_exception.dart';
import 'package:movie_tentwenty_app/features/global/provider/provider.dart';
import 'package:movie_tentwenty_app/features/global/serializer/models.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_details/movie_details_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_genre/genre_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/remote_data_source/latest_movies_remote_data_source.dart';

class LatestMoviesRemoteDataSourceImpl implements LatestMoviesRemoteDataSource {
  final http.Client httpClient;

  LatestMoviesRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<UpcomingMoviesModel> getUpcomingMovies() async {
    const String _endPoint = "movie/upcoming?language=en-US&page=1";

    final response = await httpClient.get(
      Uri.parse(endPoint(_endPoint)),
      headers: headerBearerOption(API_Read_Access_Token),
    );

    if (response.statusCode == 200) {


      return UpcomingMoviesModel.fromJson(response.body)!;
    } else {
      throw ServerException(message: "Movie DB Server Exception");
    }
  }

  @override
  Future<GenreModel> getGenre() async {
    const String _endPoint = "https://api.themoviedb.org/3/genre/movie/list";

    final response = await httpClient.get(
      Uri.parse(endPoint(_endPoint)),
      headers: headerBearerOption(API_Read_Access_Token),
    );

    if (response.statusCode == 200) {

      return GenreModel.fromJson(response.body)!;
    } else {
      throw ServerException(message: "Movie DB Server Exception");
    }
  }

  @override
  Future<MovieDetailsModel> getMovieDetails(String movieId) async {
    String _endPoint = "movie/$movieId";

    final response = await httpClient.get(
      Uri.parse(endPoint(_endPoint)),
      headers: headerBearerOption(API_Read_Access_Token),
    );

    if (response.statusCode == 200) {
      final data = MovieDetailsModel.fromJson(json.decode(response.body));

      return data!;
    } else {
      throw ServerException(message: "Movie DB Server Exception");
    }
  }
}
