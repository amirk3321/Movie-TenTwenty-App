



import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_details/movie_details_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_genre/genre_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/upcoming_movies/upcoming_movies_model.dart';

abstract class LatestMoviesRemoteDataSource {
  Future<UpcomingMoviesModel> getUpcomingMovies();
  Future<GenreModel> getGenre();
  Future<MovieDetailsModel> getMovieDetails(String movieId);
}