import 'dart:math';

import 'package:flutter/material.dart';

class PostClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;
    final path = Path();

    path.moveTo(w, h / 2);

    //big circle
    path.arcTo(
        Rect.fromCircle(center: Offset(w * .65, h * 0.28), radius: w * .6),
        0,
        2 * pi - 0.0001,
        false);

    //small circle
    path.arcTo(
        Rect.fromCircle(center: Offset(w * .17, h * 0.76), radius: w * .17),
        0,
        2 * pi - 0.0001,
        false);

    path.lineTo(w, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
