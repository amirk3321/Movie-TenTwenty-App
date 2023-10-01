part of 'movie_details_cubit.dart';

abstract class MovieDetailsState extends Equatable {
  const MovieDetailsState();
}

class MovieDetailsInitial extends MovieDetailsState {
  @override
  List<Object> get props => [];
}

class MovieDetailsLoading extends MovieDetailsState {
  @override
  List<Object> get props => [];
}



class MovieDetailsFailure extends MovieDetailsState {
  @override
  List<Object> get props => [];
}

class MovieDetailsLoaded extends MovieDetailsState {
  final MovieDetailsModel movieDetails;

  const MovieDetailsLoaded({required this.movieDetails});
  @override
  List<Object> get props => [movieDetails];
}
