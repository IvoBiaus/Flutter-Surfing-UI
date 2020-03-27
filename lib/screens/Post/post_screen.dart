import 'package:flutter/material.dart';
import 'package:surfingui/components/CircleProfile/circle_profile.dart';
import 'package:surfingui/models/post.dart';
import 'package:intl/intl.dart';

import 'components/post_clipper.dart';

class PostScreen extends StatelessWidget {
  final Post post;

  PostScreen({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _body() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _header(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 25),
                  _ownerProfile(),
                  SizedBox(height: 25),
                  _title(),
                  SizedBox(height: 5),
                  _date(),
                  SizedBox(height: 25),
                  _image(),
                  SizedBox(height: 25),
                  _content(),
                  SizedBox(height: 25),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _header() {
    return Container(
      height: 350,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          _clippedImage(),
          _icons(),
        ],
      ),
    );
  }

  _clippedImage() {
    return ClipPath(
      clipper: PostClipper(),
      child: Image(
        image: AssetImage(post.owner.postPic),
        fit: BoxFit.cover,
        height: 350,
        width: double.infinity,
      ),
    );
  }

  _icons() {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 47),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.keyboard_backspace,
            size: 40,
          ),
          SizedBox(height: 25),
          Icon(
            Icons.favorite,
            size: 30,
          ),
          SizedBox(height: 10),
          Icon(
            Icons.star,
            size: 30,
          ),
          SizedBox(height: 10),
          Icon(
            Icons.share,
            size: 30,
          ),
          Spacer(),
          Container(
            height: 74,
            width: 74,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(37),
              color: Colors.white,
            ),
            child: Icon(
              Icons.play_arrow,
              size: 55,
            ),
          )
        ],
      ),
    );
  }

  _ownerProfile() {
    return Row(
      children: <Widget>[
        CircleProfile(user: post.owner, size: 50),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              post.owner.name.toUpperCase(),
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff3A3A3A),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '4 HOURS AGO',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff3A3A3A),
                fontWeight: FontWeight.bold,
              ),
            ), // TODO calculate time
          ],
        ),
        Spacer(),
        Icon(Icons.person_add)
      ],
    );
  }

  _title() {
    return Text(
      post.title,
      style: TextStyle(
          fontSize: 30,
          letterSpacing: 2,
          fontWeight: FontWeight.w900,
          color: Color(0xff2B2B2B)),
    );
  }

  _date() {
    return Text(
      '${DateFormat.yMd().format(post.createdAt)}',
      style: TextStyle(
          fontSize: 16,
          letterSpacing: 2,
          fontWeight: FontWeight.w500,
          color: Color(0xff2B2B2B)),
    );
  }

  _image() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image(
        image: AssetImage(post.postPicture),
        fit: BoxFit.cover,
        height: 170,
        width: double.infinity,
      ),
    );
  }

  _content() {
    return Text(
      post.content,
      style: TextStyle(color: Color(0xff979797), fontSize: 20),
    );
  }
}
