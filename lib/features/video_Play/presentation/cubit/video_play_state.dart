part of 'video_play_cubit.dart';

abstract class VideoPlayState extends Equatable {
  const VideoPlayState();
}

class VideoPlayInitial extends VideoPlayState {
  @override
  List<Object> get props => [];
}

class VideoPlayLoading extends VideoPlayState {
  @override
  List<Object> get props => [];
}

class VideoPlayLoaded extends VideoPlayState {
  final VideoPlayModel videoPlayModel;

  const VideoPlayLoaded({required this.videoPlayModel});


  @override
  List<Object> get props => [];
}
class VideoPlayFailure extends VideoPlayState {
  @override
  List<Object> get props => [];
}