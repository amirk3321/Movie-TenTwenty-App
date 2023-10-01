



import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_genre/genre_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/repository/latest_movies_repository.dart';

class GetGenreUseCase {
  final LatestMovieRepository repository;

  GetGenreUseCase({required this.repository});

  Future<GenreModel> call() async{
    return repository.getGenre();
  }
}