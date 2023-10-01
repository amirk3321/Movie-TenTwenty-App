import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_tentwenty_app/core/server_exception.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_genre/genre_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/usecases/genre/get_genre_usecase.dart';

part 'genre_state.dart';

class GenreCubit extends Cubit<GenreState> {
  final GetGenreUseCase genreUseCase;
  GenreCubit({
    required this.genreUseCase
}) : super(GenreInitial());

  Future<void> getGenre() async {
    emit(GenreLoading());
    try {
      final genreData = await genreUseCase.call();
      emit(GenreLoaded(genreData: genreData));
    } on SocketException catch (e) {
      emit(GenreFailure());
    } on ServerException catch (e) {
      emit(GenreFailure());
    }
  }
}
