import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tentwenty_app/features/global/entities/app_entity.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/pages/movie_details_page/movie_details_page.dart';
import 'package:movie_tentwenty_app/features/search/presentation/cubit/search_movies_cubit.dart';
import 'package:movie_tentwenty_app/features/search/presentation/widget/search_list_item.dart';
import 'package:movie_tentwenty_app/features/search/presentation/widget/search_loading_shimmer.dart';
import 'package:shimmer/shimmer.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchMoviesCubit, SearchMoviesState>(
      builder: (context,searchMoviesState) {

        if (searchMoviesState is SearchMoviesLoaded){
          final searchMovies = searchMoviesState.searchMoviesModel;
          return Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              color: colorDBDBDF,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "top results",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  const Divider(),
                  Expanded(
                    child: ListView.builder(
                      itemCount: searchMovies.results.length,
                      itemBuilder: (context, index) {
                        final searchItem = searchMovies.results[index];

                        final heroId = UniqueKey().toString();

                        return SearchListItem(
                          searchMoviesData: searchItem,
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
                                  return MovieDetailsPage(appEntity: AppEntity(tag: heroId, searchMoviesData: searchItem),);
                                },
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return const SearchLoadingShimmer();
      },
    );
  }



}
