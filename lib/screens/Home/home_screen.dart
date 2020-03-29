import 'package:flutter/material.dart';
import 'package:surfingui/components/CircleProfile/circle_profile.dart';
import 'package:surfingui/constants/mocked_data.dart';

import 'components/UserPost/user_post.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Color(0xff3E3E3E),
          size: 34,
        ),
        onPressed: () => print('menu pressed'),
      ),
      title: Center(
        child: Text(
          'Surfers',
          style: TextStyle(
              color: Color(0xff3E3E3E),
              fontWeight: FontWeight.bold,
              fontSize: 30,
              letterSpacing: 1,
              fontFamily: 'Roboto'),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Color(0xff3E3E3E),
            size: 30,
          ),
          onPressed: () => print('search pressed'),
        )
      ],
    );
  }

  _body(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 30, right: 30),
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            _contactsStories(context),
            SizedBox(
              height: 25,
            ),
            _contactsPosts(),
          ],
        ),
      ),
    );
  }

  _contactsStories(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      alignment: Alignment.center,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(width: 20);
        },
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CircleProfile(user: users[index], size: 55);
        },
        itemCount: users.length,
      ),
    );
  }

  _contactsPosts() {
    return Expanded(
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(height: 37.5);
          },
          itemBuilder: (context, index) {
            return UserPost(post: posts[index]);
          },
          itemCount: posts.length,
        ),
      ),
    );
  }
}
