import 'package:movie_tentwenty_app/features/search/data/models/search_movies_model.dart';
import 'package:movie_tentwenty_app/features/search/data/remote_data_source/search_movies_remote_data_source.dart';
import 'package:movie_tentwenty_app/features/search/domain/repositories/search_movies_repository.dart';
import 'package:movie_tentwenty_app/features/video_Play/data/model/video_play_model.dart';

class SearchMoviesRepositoryImpl implements SearchMoviesRepository {
  final SearchMoviesRemoteDataSource remoteDataSource;

  SearchMoviesRepositoryImpl({required this.remoteDataSource});

  @override
  Future<SearchMoviesModel> searchMovies(String query) async =>
      remoteDataSource.searchMovies(query);
}
