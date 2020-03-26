import 'package:surfingui/models/user.dart';
import 'package:surfingui/models/post.dart';


User michael = User(
  name: 'Michael Scott',
  description:
      'From surfing’s early beginnings as the “Sport of Kings” in Hawaii, it has held a certain sway over spectators and participants alike.',
  postPic: 'assets/p-a.jpg',
  profilePic: 'assets/u-a.jpg',
  presentationPic: 'assets/u-b.jpeg',
);

User aaron = User(
  name: 'Aaron',
  description:
      'From surfing’s early beginnings as the “Sport of Kings” in Hawaii, it has held a certain sway over spectators and participants alike.',
  postPic: 'assets/p-b.jpg',
  profilePic: 'assets/u-c.png',
  presentationPic: 'assets/u-d.jpg',
);

List<User> users = [michael, aaron];

Post firstPost = Post(
  content:
      'Aliquam in bibendum mauris. Sed vitae erat vel velit blandit pharetra vitae nec ante. Cras at est augue. Cras ut interdum elit. Ut malesuada a urna sit amet blandit. Nullam nunc lorem, aliquam at eros laoreet, feugiat bibendum ligula. Aenean congue, massa id aliquet semper, ligula ante tristique nulla, quis posuere dui purus vel urna. Nullam varius, magna nec egestas convallis, orci ex tempus quam, id finibus arcu ipsum fringilla purus. Aenean dapibus suscipit eleifend. Aliquam vel ipsum eu lorem hendrerit iaculis vitae ut lorem. Suspendisse ullamcorper dolor faucibus sem auctor consequat. Ut luctus posuere auctor. Sed non molestie metus.',
title: 'The 10 Most Influential Surfers of All Time',
likes: 200,
location: 'Argentina, Buenos Aires',
owner: michael,
postPicture: 'assets/u-e.jpg',
);

Post secondPost = Post(
  content:
      'Aliquam in bibendum mauris. Sed vitae erat vel velit blandit pharetra vitae nec ante. Cras at est augue. Cras ut interdum elit. Ut malesuada a urna sit amet blandit. Nullam nunc lorem, aliquam at eros laoreet, feugiat bibendum ligula. Aenean congue, massa id aliquet semper, ligula ante tristique nulla, quis posuere dui purus vel urna. Nullam varius, magna nec egestas convallis, orci ex tempus quam, id finibus arcu ipsum fringilla purus. Aenean dapibus suscipit eleifend. Aliquam vel ipsum eu lorem hendrerit iaculis vitae ut lorem. Suspendisse ullamcorper dolor faucibus sem auctor consequat. Ut luctus posuere auctor. Sed non molestie metus.',
title: 'The 10 Most Influential Surfers of All Time',
likes: 200,
location: 'Argentina, Buenos Aires',
owner: aaron,
postPicture: 'assets/u-e.jpg',
);

List<Post> posts = [firstPost, secondPost];
