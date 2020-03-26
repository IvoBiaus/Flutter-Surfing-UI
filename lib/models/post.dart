import 'user.dart';

class Post {
  String title;
  int likes;
  User owner;
  String location;
  DateTime createdAt;
  String postPicture;
  String content;

  Post({
    this.title,
    this.likes,
    this.owner,
    this.location,
    this.postPicture,
    this.content,
  }){
    this.createdAt = DateTime.now();
  }
}
