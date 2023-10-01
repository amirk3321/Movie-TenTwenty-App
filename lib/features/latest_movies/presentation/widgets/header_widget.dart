import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';
import 'package:movie_tentwenty_app/features/latest_movies/presentation/cubit/watch_page/watch_ui_cubit.dart';
import 'package:movie_tentwenty_app/features/search/presentation/cubit/search_movies_cubit.dart';
import 'package:movie_tentwenty_app/features/search/presentation/pages/search_text_field.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {

  final TextEditingController _searchTextController = TextEditingController();




  @override
  void initState() {
    _searchTextController.addListener(() {
      if (_searchTextController.text.length>1){
        context.read<WatchUiCubit>().searchQueryListener();
      }
      if (_searchTextController.text.length>=2){
        print("working");
        context.read<SearchMoviesCubit>().searchMovies(query: _searchTextController.text);
      }

    });
    super.initState();
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 111,
      padding: const EdgeInsets.only(
        left: 22,
        right: 22,
        top: 64,
      ),
      decoration: const BoxDecoration(
        color: colorWhite,
      ),
      child: BlocBuilder<WatchUiCubit, int>(
        builder: (context, watchUiState) {

          if (watchUiState==0){
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Animate(
                  effects: const [
                    SlideEffect(begin: Offset(-1, 0)),
                  ],
                  child: const Text(
                    "Watch",
                    style: TextStyle(
                        fontSize: 16,
                        color: color202C43,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 10),
                Animate(
                  effects: const [
                    SlideEffect(),
                  ],
                  child: InkWell(
                      onTap: () {
                        context.read<WatchUiCubit>().searchButtonClick();
                      },
                      child: const Icon(Icons.search)),
                )
              ],
            );
          }else{
            return  SearchTextField(
              onSearchQuery: (){
                ///TODO: submit query
              },
              searchController: _searchTextController,
              onClearSearch: (){
                context.read<WatchUiCubit>().searchButtonClose();
              },
            );
          }


        },
      ),
    );
  }
}
