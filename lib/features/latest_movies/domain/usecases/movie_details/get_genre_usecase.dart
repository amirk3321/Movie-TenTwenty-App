import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_details/movie_details_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/repository/latest_movies_repository.dart';

class MovieDetailsUseCase {
  final LatestMovieRepository repository;

  MovieDetailsUseCase({required this.repository});

  Future<MovieDetailsModel> call(String movieId) async {
    return repository.getMovieDetails(movieId);
  }
}
