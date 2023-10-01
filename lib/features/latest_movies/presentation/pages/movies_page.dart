import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tentwenty_app/features/global/entities/app_entity.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/cubit/upcoming_movies/upcoming_movies_cubit.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/cubit/watch_page/watch_ui_cubit.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/pages/movie_details_page/movie_details_page.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/widgets/header_widget.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/widgets/movie_loading_shimmer.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/widgets/single_movie_list_item.dart';
import 'package:movie_tentwenty_app/features/movies_catagories/presentation/pages/movies_categories_page.dart';
import 'package:movie_tentwenty_app/features/search/presentation/pages/search_page.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderWidget(),
          const SizedBox(height: 10),
          BlocBuilder<WatchUiCubit, int>(
            builder: (context, watchUiState) {
              if (watchUiState == 1) {
                return const MoviesCategoriesPage();
              }

              if (watchUiState == 2) {
                return const SearchPage();
              }

              return BlocBuilder<UpcomingMoviesCubit, UpcomingMoviesState>(
                builder: (context, state) {
                  if (state is UpcomingMoviesLoaded) {
                    final upcomingMovies = state.upcomingMovies;

                    return Expanded(
                      child: Container(
                        color: colorDBDBDF,
                        child: ListView.builder(
                          itemCount: upcomingMovies.results.length,
                          itemBuilder: (context, index) {
                            final singleUpcomingMovie =
                                upcomingMovies.results[index];
                            final heroId = UniqueKey().toString();
                            return SingleMovieListItem(
                              data: singleUpcomingMovie,
                              animationId: heroId,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    reverseTransitionDuration:
                                        const Duration(milliseconds: 600),
                                    transitionDuration:
                                        const Duration(seconds: 1),
                                    pageBuilder: (_, __, ___) {
                                      return MovieDetailsPage(
                                        appEntity: AppEntity(
                                            tag: heroId,
                                            upcomingMovieData:
                                                singleUpcomingMovie),
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    );
                  }
                  return const MovieLoadingShimmer();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
