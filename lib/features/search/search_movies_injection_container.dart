import 'package:movie_tentwenty_app/features/latest_movies/data/remote_data_source/latest_movies_remote_data_source.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/remote_data_source/latest_movies_remote_data_source_impl.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/repository/latest_movies_repository_impl.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/repository/latest_movies_repository.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/usecases/genre/get_genre_usecase.dart';
import 'package:movie_tentwenty_app/features/latest_movies/domain/usecases/upcoming_movies_usecase/upcoming_movies_usecase.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/cubit/get_genre/genre_cubit.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/cubit/upcoming_movies/upcoming_movies_cubit.dart';
import 'package:movie_tentwenty_app/features/search/data/remote_data_source/search_movies_remote_data_source.dart';
import 'package:movie_tentwenty_app/features/search/data/remote_data_source/search_movies_remote_data_source_impl.dart';
import 'package:movie_tentwenty_app/features/search/data/repositories/search_movies_repository_impl.dart';
import 'package:movie_tentwenty_app/features/search/domain/repositories/search_movies_repository.dart';
import 'package:movie_tentwenty_app/features/search/domain/usecases/search_movies_usecase.dart';
import 'package:movie_tentwenty_app/features/search/domain/usecases/search_movies_usecase.dart';
import 'package:movie_tentwenty_app/features/search/presentation/cubit/search_movies_cubit.dart';
import 'package:movie_tentwenty_app/features/search/presentation/cubit/search_movies_cubit.dart';
import 'package:movie_tentwenty_app/injection_container.dart';

Future<void> searchMoviesInjectionContainer() async {


  sl.registerFactory<SearchMoviesCubit>(
          () => SearchMoviesCubit(searchMoviesUseCase: sl.call()));


  sl.registerLazySingleton<SearchMoviesUseCase>(
          () => SearchMoviesUseCase(repository: sl.call()));

  sl.registerLazySingleton<SearchMoviesRepository>(
      () => SearchMoviesRepositoryImpl(remoteDataSource: sl.call()));

  sl.registerLazySingleton<SearchMoviesRemoteDataSource>(
    () => SearchMoviesRemoteDataSourceImpl(
      httpClient: sl.call(),
    ),
  );

}
