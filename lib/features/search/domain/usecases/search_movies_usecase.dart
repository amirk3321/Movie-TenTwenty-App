



import 'package:movie_tentwenty_app/features/global/serializer/models.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/repository/latest_movies_repository.dart';
import 'package:movie_tentwenty_app/features/search/data/models/search_movies_model.dart';
import 'package:movie_tentwenty_app/features/search/domain/repositories/search_movies_repository.dart';

class SearchMoviesUseCase {
  final SearchMoviesRepository repository;

  SearchMoviesUseCase({required this.repository});

  Future<SearchMoviesModel> call(String query) async{
    return repository.searchMovies(query);
  }
}