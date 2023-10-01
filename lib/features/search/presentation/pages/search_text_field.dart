


import 'package:flutter/material.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';

class SearchTextField extends StatelessWidget {
  final VoidCallback? onClearSearch;
  final VoidCallback? onSearchQuery;
  final TextEditingController? searchController;
  const SearchTextField({super.key, this.onClearSearch,this.onSearchQuery,this.searchController});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        height: 52,
        decoration: BoxDecoration(
          color: colorEFEFEF,
          borderRadius: BorderRadius.circular(30)
        ),
        child:  TextField(
          controller: searchController,
          decoration:  InputDecoration(
            hintText: "TV shows, movies and more",
            border: InputBorder.none,
            prefixIcon: InkWell(onTap: onSearchQuery,child: const Icon(Icons.search)),
            suffixIcon: InkWell(onTap: onClearSearch,child: const Icon(Icons.close)),
          ),
        ));
  }
}
