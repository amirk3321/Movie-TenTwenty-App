import 'package:flutter/material.dart';
import 'package:movie_tentwenty_app/features/global/theme/style.dart';

class CurveLine extends StatelessWidget {

  const CurveLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      height: 60,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      // color: Colors.red,
      child: CustomPaint(
        painter: _ScreenCinemaPainter(),
      ),
    );
  }
}


class _ScreenCinemaPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
      ..color = color61C3F2
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    final path = Path();

    path.moveTo(0, size.height);
    path.quadraticBezierTo( size.width * 0.5 , 0 , size.width, size.height);
    
    canvas.drawPath(path, paint);

    canvas.drawShadow(path, color61C3F2.withOpacity(.2), 1.0, true);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;


}