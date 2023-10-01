import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_tentwenty_app/core/server_exception.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_details/movie_details_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/usecases/movie_details/get_genre_usecase.dart';

part 'movie_details_state.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  final MovieDetailsUseCase movieDetailsUseCase;
  MovieDetailsCubit({required this.movieDetailsUseCase}) : super(MovieDetailsInitial());



  Future<void> movieDetails({required String movieId}) async {
    emit(MovieDetailsLoading());
    try {
      final upcomingMoviesData = await movieDetailsUseCase.call(movieId);
      emit(MovieDetailsLoaded(movieDetails: upcomingMoviesData));
    } on SocketException catch (e) {
      emit(MovieDetailsFailure());
    } on ServerException catch (e) {
      emit(MovieDetailsFailure());
    }
  }

}
