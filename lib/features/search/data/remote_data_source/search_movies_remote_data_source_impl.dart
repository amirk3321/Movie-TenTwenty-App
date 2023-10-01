import 'package:http/http.dart' as http;
import 'package:movie_tentwenty_app/core/api_keys.dart';
import 'package:movie_tentwenty_app/core/server_exception.dart';
import 'package:movie_tentwenty_app/features/global/provider/provider.dart';
import 'package:movie_tentwenty_app/features/search/data/models/search_movies_model.dart';
import 'package:movie_tentwenty_app/features/search/data/remote_data_source/search_movies_remote_data_source.dart';
import 'package:movie_tentwenty_app/features/video_Play/data/model/video_play_model.dart';

class SearchMoviesRemoteDataSourceImpl implements SearchMoviesRemoteDataSource {
  final http.Client httpClient;

  SearchMoviesRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<SearchMoviesModel> searchMovies(String query) async {
    String _endPoint = "search/movie?query=$query&api_key=$MOVIE_DB_API_KEY";

    final response = await httpClient.get(
      Uri.parse(endPoint(_endPoint)),
      headers: headerBearerOption(API_Read_Access_Token),
    );

    if (response.statusCode == 200) {
      return SearchMoviesModel.fromJson(response.body)!;
    } else {
      throw ServerException(message: "Movie DB Server Exception");
    }
  }
}
