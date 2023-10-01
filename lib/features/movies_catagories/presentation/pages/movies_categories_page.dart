import 'package:flutter/material.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';
import 'package:movie_tentwenty_app/features/movies_catagories/domain/entities/genres_entity.dart';
import 'package:movie_tentwenty_app/features/movies_catagories/presentation/widgets/single_movie_category_list_item.dart';

class MoviesCategoriesPage extends StatelessWidget {
  const MoviesCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: colorDBDBDF,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.80),
            itemCount: GenresEntity.genresListData.length,
            itemBuilder: (context, index) {
             final genreItem= GenresEntity.genresListData[index];
              final heroId = UniqueKey().toString();
              return SingleMovieCategoryListItem(
                genresEntity: genreItem,
                animationId: heroId,
                onTap: () {},
              );
            },
          ),
        ),
      ),
    );
  }
}
