part of 'genre_cubit.dart';

abstract class GenreState extends Equatable {
  const GenreState();
}

class GenreInitial extends GenreState {
  @override
  List<Object> get props => [];
}

class GenreLoading extends GenreState {
  @override
  List<Object> get props => [];
}

class GenreLoaded extends GenreState {
  final GenreModel genreData;

  const GenreLoaded({required this.genreData});
  @override
  List<Object> get props => [];
}

class GenreFailure extends GenreState {
  @override
  List<Object> get props => [];
}

