import 'package:flutter/material.dart';

import 'user.dart';

class Post {
  String content;
  String title;
  int likes;
  String location;
  User owner;
  String postPicture;
  DateTime createdAt;

  Post({
    @required this.title,
    @required this.likes,
    @required this.owner,
    @required this.location,
    @required this.postPicture,
    @required this.content,
  }){
    this.createdAt = DateTime.now();
  }
}
