import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:movie_tentwenty_app/features/global/images/movie_image.dart';
import 'package:movie_tentwenty_app/features/global/provider/provider.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';
import 'package:movie_tentwenty_app/features/latest_movies/data/models/upcoming_movies/upcoming_movie_data.dart';

class SingleMovieListItem extends StatelessWidget {
  final UpcomingMovieData data;
  final VoidCallback? onTap;
  final String animationId;

  const SingleMovieListItem(
      {Key? key, this.onTap, required this.animationId, required this.data})
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
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 15,
          ),
          height: 180,
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: Hero(
                      tag: animationId,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: moviePoster(
                              imageUrl: loadMovieDBImage(data.poster_path!))))),
              const SizedBox(
                height: 10,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                top: 180 / 1.80,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.0),
                        // Transparent black at the top (0%)
                        Colors.black,
                        // Solid black at the bottom (100%)
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 12,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "${data.title}",
                      style: const TextStyle(
                        color: colorWhite,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
