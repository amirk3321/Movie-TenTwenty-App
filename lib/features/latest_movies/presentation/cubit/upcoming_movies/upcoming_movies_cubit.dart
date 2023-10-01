import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_tentwenty_app/core/server_exception.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/upcoming_movies/upcoming_movies_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/usecases/upcoming_movies_usecase/upcoming_movies_usecase.dart';

part 'upcoming_movies_state.dart';

class UpcomingMoviesCubit extends Cubit<UpcomingMoviesState> {
  final UpcomingMoviesUseCase upcomingMoviesUseCase;
  UpcomingMoviesCubit({required this.upcomingMoviesUseCase}) : super(UpcomingMoviesInitial());




  Future<void> upcomingMovies() async {
    emit(UpcomingMoviesLoading());
    try {
      final upcomingMoviesData = await upcomingMoviesUseCase.call();
      emit(UpcomingMoviesLoaded(upcomingMovies: upcomingMoviesData));
    } on SocketException catch (e) {
      emit(UpcomingMoviesFailure());
    } on ServerException catch (e) {
      emit(UpcomingMoviesFailure());
    }
  }
}
