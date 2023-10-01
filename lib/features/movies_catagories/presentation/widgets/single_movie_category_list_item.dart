import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';
import 'package:movie_tentwenty_app/features/movies_catagories/domain/entities/genres_entity.dart';

class SingleMovieCategoryListItem extends StatelessWidget {
  final VoidCallback? onTap;
  final String animationId;
  final GenresEntity genresEntity;
  const SingleMovieCategoryListItem({Key? key,required this.genresEntity, this.onTap, required this.animationId})
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
          padding: const EdgeInsets.only(left: 5,right: 5,bottom: 10),
          height: 100,
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Hero(
                      tag: animationId,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(genresEntity.image!,
                              fit: BoxFit.cover)))),
              const SizedBox(
                height: 10,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                top: 0,
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
                        Colors.black.withOpacity(.3),
                        // Solid black at the bottom (30%)
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
                      "${genresEntity.title}",
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
