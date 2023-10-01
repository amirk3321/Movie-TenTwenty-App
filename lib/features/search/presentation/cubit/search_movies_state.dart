part of 'search_movies_cubit.dart';

abstract class SearchMoviesState extends Equatable {
  const SearchMoviesState();
}

class SearchMoviesInitial extends SearchMoviesState {
  @override
  List<Object> get props => [];
}


class SearchMoviesLoading extends SearchMoviesState {
  @override
  List<Object> get props => [];
}


class SearchMoviesLoaded extends SearchMoviesState {

  final SearchMoviesModel searchMoviesModel;

  const SearchMoviesLoaded({required this.searchMoviesModel});

  @override
  List<Object> get props => [searchMoviesModel];
}


class SearchMoviesFailure extends SearchMoviesState {
  @override
  List<Object> get props => [];
}