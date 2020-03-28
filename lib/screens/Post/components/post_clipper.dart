import 'dart:math';

import 'package:flutter/material.dart';

class PostClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;
    final path = Path();

    path.moveTo(w, 0);

    //big circle
    path.arcTo(
        Rect.fromCircle(center: Offset(w * .65, h * 0.28), radius: w * .6),
        0,
        pi*1.99,
        false);

    //small circle
     path.arcTo(
        Rect.fromCircle(center: Offset(w * .17, h * 0.76), radius: w * .17),
        0,
        pi*1.99,
        false);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
