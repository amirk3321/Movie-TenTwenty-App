import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_tentwenty_app/core/server_exception.dart';
import 'package:movie_tentwenty_app/features/video_Play/data/model/video_play_model.dart';
import 'package:movie_tentwenty_app/features/video_Play/domain/usecases/play_video_usecase.dart';

part 'video_play_state.dart';

class VideoPlayCubit extends Cubit<VideoPlayState> {
  final PlayVideoUseCase playVideoUseCase;

  VideoPlayCubit({required this.playVideoUseCase}) : super(VideoPlayInitial());

  Future<void> playVideo({required String movieId}) async {
    emit(VideoPlayLoading());
    try {
      final upcomingMoviesData = await playVideoUseCase.call(movieId);
      emit(VideoPlayLoaded(videoPlayModel: upcomingMoviesData));
    } on SocketException catch (e) {
      emit(VideoPlayFailure());
    } on ServerException catch (e) {
      emit(VideoPlayFailure());
    }
  }
  Future<void> playVideoRefresh() async {
    emit(VideoPlayFailure());
  }
}
