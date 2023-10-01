
import 'package:flutter/material.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';
import 'package:shimmer/shimmer.dart';

class MovieLoadingShimmer extends StatelessWidget {
  const MovieLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          _shimmer(),
          const SizedBox(height: 20,),
          _shimmer(),
          const SizedBox(height: 20,),
          _shimmer(),
          const SizedBox(height: 20,),
          _shimmer(),
        ],
      ),
    );
  }

  _shimmer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: color2E2739.withOpacity(.4),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 180.0,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}
