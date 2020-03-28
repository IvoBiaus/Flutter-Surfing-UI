import 'package:flutter/material.dart';
import 'package:surfingui/models/user.dart';
import 'package:surfingui/screens/Profile/profile.dart';

class CircleProfile extends StatelessWidget {
  final User user;
  final double size;

  CircleProfile({@required this.user, @required this.size});

  @override
  Widget build(BuildContext context) {
    // TODO make this clickable
    return GestureDetector(
      onTap: () => Navigator.push(context,             MaterialPageRoute(
              builder: (context) => Profile(user: user),
            ),),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(user.profilePic),
            radius: size * 0.4,
          ),
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              border: Border.all(
                width: size * 0.04,
                color: Colors
                    .blue, // TODO add a color to each user & check if user has a story
              ),
              borderRadius: BorderRadius.circular(40),
            ),
          )
        ],
      ),
    );
  }
}
