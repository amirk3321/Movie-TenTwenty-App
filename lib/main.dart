import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_tentwenty_app/features/global/entities/app_entity.dart';
import 'package:movie_tentwenty_app/features/home/initial_home_page.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/cubit/get_genre/genre_cubit.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/cubit/movie_details/movie_details_cubit.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/cubit/upcoming_movies/upcoming_movies_cubit.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/cubit/watch_page/watch_ui_cubit.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/pages/movies_page.dart';
import 'package:movie_tentwenty_app/features/payment_method/presentation/payment_method_page.dart';
import 'package:movie_tentwenty_app/features/search/presentation/cubit/search_movies_cubit.dart';
import 'package:movie_tentwenty_app/features/video_Play/presentation/cubit/video_play_cubit.dart';
import 'package:movie_tentwenty_app/on_generate_route/on_generate_route.dart';

import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WatchUiCubit>(create: (_) => di.sl<WatchUiCubit>()),
        BlocProvider<UpcomingMoviesCubit>(
            create: (_) => di.sl<UpcomingMoviesCubit>()..upcomingMovies()),
        BlocProvider<GenreCubit>(create: (_) => di.sl<GenreCubit>()),
        BlocProvider<VideoPlayCubit>(create: (_) => di.sl<VideoPlayCubit>()),
        BlocProvider<MovieDetailsCubit>(
            create: (_) => di.sl<MovieDetailsCubit>()),
        BlocProvider<SearchMoviesCubit>(
            create: (_) => di.sl<SearchMoviesCubit>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Movies Tentwenty App',
        onGenerateRoute: OnGenerateRoute.route,
        theme: ThemeData(
            useMaterial3: true,
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme,
            )),
        initialRoute: '/',
        routes: {
          "/": (context) {
            return  const InitialHomePage();
          }
        },
      ),
    );
  }
}
