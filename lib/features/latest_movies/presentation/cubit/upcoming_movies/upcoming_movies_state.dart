part of 'upcoming_movies_cubit.dart';

abstract class UpcomingMoviesState extends Equatable {
  const UpcomingMoviesState();
}

class UpcomingMoviesInitial extends UpcomingMoviesState {
  @override
  List<Object> get props => [];
}



class UpcomingMoviesFailure extends UpcomingMoviesState {
  @override
  List<Object> get props => [];
}

class UpcomingMoviesLoaded extends UpcomingMoviesState {
  final UpcomingMoviesModel upcomingMovies;

  const UpcomingMoviesLoaded({required this.upcomingMovies});

  @override
  List<Object> get props => [upcomingMovies];
}

class UpcomingMoviesLoading extends UpcomingMoviesState {
  @override
  List<Object> get props => [];
}