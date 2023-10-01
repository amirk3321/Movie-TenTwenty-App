import 'package:movie_tentwenty_app/features/video_Play/data/remote_data_source/video_play_remote_data_source.dart';
import 'package:movie_tentwenty_app/features/video_Play/data/remote_data_source/video_play_remote_data_source_impl.dart';
import 'package:movie_tentwenty_app/features/video_Play/data/repositories/video_play_repository_impl.dart';
import 'package:movie_tentwenty_app/features/video_Play/domain/repositories/video_play_repository.dart';
import 'package:movie_tentwenty_app/features/video_Play/domain/usecases/play_video_usecase.dart';
import 'package:movie_tentwenty_app/features/video_Play/presentation/cubit/video_play_cubit.dart';
import 'package:movie_tentwenty_app/injection_container.dart';

Future<void> videoPlayInjectionContainer() async {
  sl.registerFactory<VideoPlayCubit>(
      () => VideoPlayCubit(playVideoUseCase: sl.call()));

  sl.registerLazySingleton<PlayVideoUseCase>(
      () => PlayVideoUseCase(repository: sl.call()));

  sl.registerLazySingleton<VideoPlayRepository>(
      () => VideoPlayRepositoryImpl(remoteDataSource: sl.call()));

  sl.registerLazySingleton<VideoPlayRemoteDataSource>(
    () => VideoPlayRemoteDataSourceImpl(
      httpClient: sl.call(),
    ),
  );
}
