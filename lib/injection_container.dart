import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:movie_tentwenty_app/features/latest_movies/latest_movies_injection_container.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/cubit/watch_page/watch_ui_cubit.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/cubit/watch_page/watch_ui_cubit.dart';
import 'package:movie_tentwenty_app/features/search/search_movies_injection_container.dart';
import 'package:movie_tentwenty_app/features/video_Play/video_play_injection_container.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Externals

  sl.registerFactory<WatchUiCubit>(
          () => WatchUiCubit());


  final http.Client httpClient = http.Client();

  sl.registerLazySingleton<http.Client>(() => httpClient);


  await latestMoviesInjectionContainer();
  await videoPlayInjectionContainer();
  await searchMoviesInjectionContainer();
}
