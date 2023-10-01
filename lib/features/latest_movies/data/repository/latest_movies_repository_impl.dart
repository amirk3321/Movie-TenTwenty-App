import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_details/movie_details_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_genre/genre_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/upcoming_movies/upcoming_movies_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/remote_data_source/latest_movies_remote_data_source.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/repository/latest_movies_repository.dart';

class LatestMovieRepositoryImpl implements LatestMovieRepository {
  final LatestMoviesRemoteDataSource remoteDataSource;

  LatestMovieRepositoryImpl({required this.remoteDataSource});

  @override
  Future<UpcomingMoviesModel> getUpcomingMovies() async =>
      remoteDataSource.getUpcomingMovies();

  @override
  Future<GenreModel> getGenre() async =>
      remoteDataSource.getGenre();

  @override
  Future<MovieDetailsModel> getMovieDetails(String movieId) async =>
      remoteDataSource.getMovieDetails(movieId);


}
