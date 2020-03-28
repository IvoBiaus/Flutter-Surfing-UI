import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:surfingui/components/CircleProfile/circle_profile.dart';
import 'package:surfingui/constants/mocked_data.dart';
import 'package:surfingui/models/user.dart';

class Profile extends StatelessWidget {
  final User user;

  Profile({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Image(
            height: double.infinity,
            width: double.infinity,
            image: AssetImage(user.presentationPic),
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(30),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _appBar(context),
                SizedBox(height: 15),
                _userInfo(),
                Spacer(),
                _followButton(),
                SizedBox(height: 30),
                _otherUsers(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _appBar(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        Spacer(),
        Icon(
          Icons.more_horiz,
          color: Colors.white,
          size: 30,
        ),
      ],
    );
  }

  _userInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          user.name,
          style: TextStyle(
            fontSize: 44,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Colors.black54,
                offset: Offset(0, 1.5),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Text(
          user.description,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            shadows: [
              Shadow(
                color: Colors.black54,
                offset: Offset(0, 2),
                blurRadius: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }

  _followButton() {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(23),
        child: Container(
          height: 45,
          width: 230,
          color: Colors.white12,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(23),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4,
                sigmaY: 4,
              ),
              child: Center(
                child: Text(
                  'FOLLOW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _otherUsers() {
    final testUser = users[1];

    return Container(
      width: double.infinity,
      height: 45,
      alignment: Alignment.center,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(width: 20);
        },
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CircleProfile(user: testUser, size: 45);
        },
        itemCount: 8,
      ),
    );
    ;
  }
}
