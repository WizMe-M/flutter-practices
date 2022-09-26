import 'package:flutter/material.dart';
import 'dart:math' as math;

class Arc extends StatelessWidget {
  final double width;
  final double height;

  const Arc({Key? key, required this.width, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ArcPainter(),
      size: Size(width, height),
    );
  }
}

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.grey.shade100;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.width / 2, size.height),
        width: size.width,
        height: size.height
      ),
      math.pi,
      math.pi, 
      false, 
      paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;  
}