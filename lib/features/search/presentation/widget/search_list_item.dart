import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:movie_tentwenty_app/features/global/images/movie_image.dart';
import 'package:movie_tentwenty_app/features/global/provider/genres_const.dart';
import 'package:movie_tentwenty_app/features/global/provider/provider.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';
import 'package:movie_tentwenty_app/features/search/data/models/search_movies_data.dart';

class SearchListItem extends StatelessWidget {
  final VoidCallback? onTap;
  final String animationId;
  final SearchMoviesData searchMoviesData;

  const SearchListItem(
      {Key? key,
      this.onTap,
      required this.animationId,
      required this.searchMoviesData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Animate(
        effects: const [
          FadeEffect(curve: Curves.easeIn),
          ScaleEffect(duration: Duration(milliseconds: 150)),
        ],
        child: Container(
          padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
          height: 100,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    SizedBox(
                        height: 100,
                        width: 130,
                        child: Hero(
                            tag: animationId,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: moviePoster(
                                    imageUrl: searchMoviesData.backdrop_path ==
                                            null
                                        ? null
                                        : loadMovieDBImage(
                                            searchMoviesData.backdrop_path!))))),
                    Expanded(
                      child: InkWell(
                        onTap: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                searchMoviesData.title!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: color202C43,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                              Wrap(
                                children: searchMoviesData.genre_ids.map((item) {

                                  final index =
                                      searchMoviesData.genre_ids.indexOf(item);
                                  final name = genresNameConst[item];

                                  return  Text(
                                    "$name! ",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: color827D88,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.more_horiz,
                color: color61C3F2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
