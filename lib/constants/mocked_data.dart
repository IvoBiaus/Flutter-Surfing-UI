import 'package:flutter/material.dart';
import 'package:surfingui/models/user.dart';
import 'package:surfingui/models/post.dart';

// USERS

User a = User(
  name: 'Michael Scott',
  color: Colors.redAccent,
  description:
      'From surfing’s early beginnings as the “Sport of Kings” in Hawaii, it has held a certain sway over spectators and participants alike.',
  profilePic: 'assets/d.jpg',
  presentationPic: 'assets/g.jpg',
);

User b = User(
  name: 'Emma Smith',
  color: Colors.amberAccent,
  description:
      'From surfing’s early beginnings as the “Sport of Kings” in Hawaii, it has held a certain sway over spectators and participants alike.',
  profilePic: 'assets/a.jpg',
  presentationPic: 'assets/u.jpg',
);


User c = User(
  name: 'James Bold',
  color: Colors.blueAccent,
  description:
      'From surfing’s early beginnings as the “Sport of Kings” in Hawaii, it has held a certain sway over spectators and participants alike.',
  profilePic: 'assets/s.jpeg',
  presentationPic: 'assets/q.jpg',
);


User d = User(
  name: 'John Connor',
  color: Colors.pinkAccent,
  description:
      'From surfing’s early beginnings as the “Sport of Kings” in Hawaii, it has held a certain sway over spectators and participants alike.',
  profilePic: 'assets/t.png',
  presentationPic: 'assets/n.jpg',
);


User e = User(
  name: 'Elizabeth Swann',
  color: Colors.greenAccent,
  description:
      'From surfing’s early beginnings as the “Sport of Kings” in Hawaii, it has held a certain sway over spectators and participants alike.',
  profilePic: 'assets/r.jpg',
  presentationPic: 'assets/o.jpg',
);

User f = User(
  name: 'Agent 47',
  color: Colors.purpleAccent,
  description:
      'From surfing’s early beginnings as the “Sport of Kings” in Hawaii, it has held a certain sway over spectators and participants alike.',
  profilePic: 'assets/c.jpg',
  presentationPic: 'assets/e.jpg',
);

User g = User(
  name: 'Crazy Guy',
  color: Colors.tealAccent,
  description:
      'From surfing’s early beginnings as the “Sport of Kings” in Hawaii, it has held a certain sway over spectators and participants alike.',
  profilePic: 'assets/l.jpg',
  presentationPic: 'assets/v.jpg',
);


List<User> users = [a, b, c, d, e, f, g];

// POSTS

Post one = Post(
  content:
      'Aliquam in bibendum mauris. Sed vitae erat vel velit blandit pharetra vitae nec ante. Cras at est augue. Cras ut interdum elit. Ut malesuada a urna sit amet blandit. Nullam nunc lorem, aliquam at eros laoreet, feugiat bibendum ligula. Aenean congue, massa id aliquet semper, ligula ante tristique nulla, quis posuere dui purus vel urna. Nullam varius, magna nec egestas convallis, orci ex tempus quam, id finibus arcu ipsum fringilla purus. Aenean dapibus suscipit eleifend. Aliquam vel ipsum eu lorem hendrerit iaculis vitae ut lorem. Suspendisse ullamcorper dolor faucibus sem auctor consequat. Ut luctus posuere auctor. Sed non molestie metus.',
  title: 'The 10 Most Influential Surfers of All Time',
  likes: 5500,
  location: 'Argentina, Buenos Aires',
  postPicture: 'assets/f.jpg',
  owner: a,
);

Post two = Post(
  content:
      'Aliquam in bibendum mauris. Sed vitae erat vel velit blandit pharetra vitae nec ante. Cras at est augue. Cras ut interdum elit. Ut malesuada a urna sit amet blandit. Nullam nunc lorem, aliquam at eros laoreet, feugiat bibendum ligula. Aenean congue, massa id aliquet semper, ligula ante tristique nulla, quis posuere dui purus vel urna. Nullam varius, magna nec egestas convallis, orci ex tempus quam, id finibus arcu ipsum fringilla purus. Aenean dapibus suscipit eleifend. Aliquam vel ipsum eu lorem hendrerit iaculis vitae ut lorem. Suspendisse ullamcorper dolor faucibus sem auctor consequat. Ut luctus posuere auctor. Sed non molestie metus.',
  title: 'The 10 Most Influential Surfers of All Time',
  likes: 30000,
  location: 'Argentina, Buenos Aires',
  postPicture: 'assets/h.jpg',
  owner: b,
);

Post three = Post(
  content:
      'Aliquam in bibendum mauris. Sed vitae erat vel velit blandit pharetra vitae nec ante. Cras at est augue. Cras ut interdum elit. Ut malesuada a urna sit amet blandit. Nullam nunc lorem, aliquam at eros laoreet, feugiat bibendum ligula. Aenean congue, massa id aliquet semper, ligula ante tristique nulla, quis posuere dui purus vel urna. Nullam varius, magna nec egestas convallis, orci ex tempus quam, id finibus arcu ipsum fringilla purus. Aenean dapibus suscipit eleifend. Aliquam vel ipsum eu lorem hendrerit iaculis vitae ut lorem. Suspendisse ullamcorper dolor faucibus sem auctor consequat. Ut luctus posuere auctor. Sed non molestie metus.',
  title: 'The 10 Most Influential Surfers of All Time',
  likes: 50,
  location: 'Argentina, Buenos Aires',
  postPicture: 'assets/i.jpg',
  owner: c,
);

Post four = Post(
  content:
      'Aliquam in bibendum mauris. Sed vitae erat vel velit blandit pharetra vitae nec ante. Cras at est augue. Cras ut interdum elit. Ut malesuada a urna sit amet blandit. Nullam nunc lorem, aliquam at eros laoreet, feugiat bibendum ligula. Aenean congue, massa id aliquet semper, ligula ante tristique nulla, quis posuere dui purus vel urna. Nullam varius, magna nec egestas convallis, orci ex tempus quam, id finibus arcu ipsum fringilla purus. Aenean dapibus suscipit eleifend. Aliquam vel ipsum eu lorem hendrerit iaculis vitae ut lorem. Suspendisse ullamcorper dolor faucibus sem auctor consequat. Ut luctus posuere auctor. Sed non molestie metus.',
  title: 'The 10 Most Influential Surfers of All Time',
  likes: 1500,
  location: 'Argentina, Buenos Aires',
  postPicture: 'assets/j.jpg',
  owner: d,
);

Post five = Post(
  content:
      'Aliquam in bibendum mauris. Sed vitae erat vel velit blandit pharetra vitae nec ante. Cras at est augue. Cras ut interdum elit. Ut malesuada a urna sit amet blandit. Nullam nunc lorem, aliquam at eros laoreet, feugiat bibendum ligula. Aenean congue, massa id aliquet semper, ligula ante tristique nulla, quis posuere dui purus vel urna. Nullam varius, magna nec egestas convallis, orci ex tempus quam, id finibus arcu ipsum fringilla purus. Aenean dapibus suscipit eleifend. Aliquam vel ipsum eu lorem hendrerit iaculis vitae ut lorem. Suspendisse ullamcorper dolor faucibus sem auctor consequat. Ut luctus posuere auctor. Sed non molestie metus.',
  title: 'The 10 Most Influential Surfers of All Time',
  likes: 3650,
  location: 'Argentina, Buenos Aires',
  postPicture: 'assets/m.jpg',
  owner: e,
);

List<Post> posts = [one, two, three, four, five];
