
import 'package:flutter/material.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';
import 'package:shimmer/shimmer.dart';

class SearchLoadingShimmer extends StatelessWidget {
  const SearchLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          _shimmer(),
          const SizedBox(height: 10,),
          _shimmer(),
          const SizedBox(height: 10,),
          _shimmer(),
          const SizedBox(height: 10,),
          _shimmer(),
          const SizedBox(height: 10,),
          _shimmer(),
          const SizedBox(height: 10,),
          _shimmer(),
          const SizedBox(height: 10,),
          _shimmer(),
        ],
      ),
    );
  }


  _shimmer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: color2E2739.withOpacity(.4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Column(
              children: [
                const SizedBox(height: 10,),
                Container(
                  width: 300,
                  height: 20.0,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  width: 300,
                  height: 20.0,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
