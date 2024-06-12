
import 'dart:ui';
import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(1.0, size.height - 60);
    double increment = size.width / 5;
    for (int i = 0; i < 5; i++) {
      double startX = increment * i;
      double controlPointX = startX + increment / 2;
      double endX = startX + increment;
      double controlPointY = (i % 2 == 0) ? size.height - 20 : size.height - 60;
      double endY = size.height - 40;
      path.quadraticBezierTo(controlPointX, controlPointY, endX, endY);
    }
    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}