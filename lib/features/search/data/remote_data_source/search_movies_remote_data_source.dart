



import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_details/movie_details_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_genre/genre_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/upcoming_movies/upcoming_movies_model.dart';
import 'package:movie_tentwenty_app/features/search/data/models/search_movies_model.dart';
import 'package:movie_tentwenty_app/features/video_Play/data/model/video_play_model.dart';

abstract class SearchMoviesRemoteDataSource {
  Future<SearchMoviesModel> searchMovies(String query);

}