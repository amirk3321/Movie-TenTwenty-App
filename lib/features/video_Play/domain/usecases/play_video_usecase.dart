import 'package:movie_tentwenty_app/features/video_Play/data/model/video_play_model.dart';
import 'package:movie_tentwenty_app/features/video_Play/domain/repositories/video_play_repository.dart';

class PlayVideoUseCase {
  final VideoPlayRepository repository;

  PlayVideoUseCase({required this.repository});

  Future<VideoPlayModel> call(String movieId) async {
    return repository.playVideo(movieId);
  }
}
