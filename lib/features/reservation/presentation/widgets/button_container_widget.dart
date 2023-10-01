import 'package:flutter/material.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';

class ButtonContainerWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final VoidCallback? onClickListener;
  final String text;
  final double? radius;

  const ButtonContainerWidget({
    Key? key,
    this.width = 170,
    this.height = 50,
    this.onClickListener,
    required this.text,
    this.radius = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClickListener,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.4),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(4, 4)),
          BoxShadow(
              color: Colors.black.withOpacity(.4),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(-4, -4))
        ], color: color61C3F2, borderRadius: BorderRadius.circular(radius!)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: colorWhite),
          ),
        ),
      ),
    );
  }
}
