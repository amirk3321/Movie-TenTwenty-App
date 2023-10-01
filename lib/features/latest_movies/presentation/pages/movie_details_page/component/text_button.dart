


import 'package:flutter/material.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';

class TextButtonWidget extends StatelessWidget {
  final String title;
  final Color color;
  const TextButtonWidget({super.key,required this.title,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 4),
      padding: const EdgeInsets.only(left: 10,top: 2,bottom: 2,right: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(title,style: const TextStyle(fontSize: 12,color: colorWhite),),
    );
  }
}
