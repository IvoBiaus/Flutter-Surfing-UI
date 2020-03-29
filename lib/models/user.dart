import 'package:flutter/material.dart';

class User {
  String name;
  String description;
  String profilePic;
  String presentationPic;
  Color color;

  User({
    @required this.name,
    @required this.description,
    @required this.profilePic,
    @required this.presentationPic,
    @required this.color,
  });
}
