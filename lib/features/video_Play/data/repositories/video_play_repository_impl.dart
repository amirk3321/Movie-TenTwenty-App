import 'package:movie_tentwenty_app/features/latest_movies/data/models/movie_genre/genre_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/upcoming_movies/upcoming_movies_model.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/remote_data_source/latest_movies_remote_data_source.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/repository/latest_movies_repository.dart';
import 'package:movie_tentwenty_app/features/video_Play/data/model/video_play_model.dart';
import 'package:movie_tentwenty_app/features/video_Play/data/remote_data_source/video_play_remote_data_source.dart';
import 'package:movie_tentwenty_app/features/video_Play/domain/repositories/video_play_repository.dart';

class VideoPlayRepositoryImpl implements VideoPlayRepository {
  final VideoPlayRemoteDataSource remoteDataSource;

  VideoPlayRepositoryImpl({required this.remoteDataSource});

  @override
  Future<VideoPlayModel> playVideo(String movieId) async =>
      remoteDataSource.playVideo(movieId);




}
