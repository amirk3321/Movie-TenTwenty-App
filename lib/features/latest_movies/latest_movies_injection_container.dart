import 'package:movie_tentwenty_app/features/latest_movies/data/remote_data_source/latest_movies_remote_data_source.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/remote_data_source/latest_movies_remote_data_source_impl.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/repository/latest_movies_repository_impl.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/repository/latest_movies_repository.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/usecases/genre/get_genre_usecase.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/usecases/movie_details/get_genre_usecase.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/usecases/upcoming_movies_usecase/upcoming_movies_usecase.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/cubit/get_genre/genre_cubit.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/cubit/movie_details/movie_details_cubit.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/cubit/upcoming_movies/upcoming_movies_cubit.dart';
import 'package:movie_tentwenty_app/injection_container.dart';

Future<void> latestMoviesInjectionContainer() async {
  sl.registerFactory<UpcomingMoviesCubit>(
      () => UpcomingMoviesCubit(upcomingMoviesUseCase: sl.call()));

  sl.registerFactory<MovieDetailsCubit>(
      () => MovieDetailsCubit(movieDetailsUseCase: sl.call()));

  sl.registerFactory<GenreCubit>(() => GenreCubit(genreUseCase: sl.call()));

  sl.registerLazySingleton<UpcomingMoviesUseCase>(
      () => UpcomingMoviesUseCase(repository: sl.call()));

  sl.registerLazySingleton<GetGenreUseCase>(
      () => GetGenreUseCase(repository: sl.call()));

  sl.registerLazySingleton<MovieDetailsUseCase>(
      () => MovieDetailsUseCase(repository: sl.call()));

  sl.registerLazySingleton<LatestMovieRepository>(
      () => LatestMovieRepositoryImpl(remoteDataSource: sl.call()));

  sl.registerLazySingleton<LatestMoviesRemoteDataSource>(
    () => LatestMoviesRemoteDataSourceImpl(
      httpClient: sl.call(),
    ),
  );
}
