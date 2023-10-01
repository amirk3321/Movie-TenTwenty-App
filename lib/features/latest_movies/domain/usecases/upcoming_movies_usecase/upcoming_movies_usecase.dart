



import 'package:movie_tentwenty_app/features/global/serializer/models.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/repository/latest_movies_repository.dart';

class UpcomingMoviesUseCase {
  final LatestMovieRepository repository;

  UpcomingMoviesUseCase({required this.repository});

  Future<UpcomingMoviesModel> call() async{
    return repository.getUpcomingMovies();
  }
}