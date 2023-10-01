import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_tentwenty_app/core/server_exception.dart';
import 'package:movie_tentwenty_app/features/search/data/models/search_movies_model.dart';
import 'package:movie_tentwenty_app/features/search/domain/usecases/search_movies_usecase.dart';

part 'search_movies_state.dart';

class SearchMoviesCubit extends Cubit<SearchMoviesState> {
  final SearchMoviesUseCase searchMoviesUseCase;

  SearchMoviesCubit({required this.searchMoviesUseCase})
      : super(SearchMoviesInitial());

  Future<void> searchMovies({required String query}) async {
    emit(SearchMoviesLoading());

    try {
      final upcomingMoviesData = await searchMoviesUseCase.call(query);
      emit(SearchMoviesLoaded(searchMoviesModel: upcomingMoviesData));
    } on SocketException catch (e) {
      emit(SearchMoviesFailure());
    } on ServerException catch (e) {
      emit(SearchMoviesFailure());
    }
  }
}
