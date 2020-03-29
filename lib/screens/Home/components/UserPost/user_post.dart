import 'package:flutter/material.dart';
import 'package:surfingui/components/CircleProfile/circle_profile.dart';
import 'package:surfingui/models/post.dart';
import 'package:surfingui/screens/Post/post_screen.dart';

class UserPost extends StatelessWidget {
  final Post post;

  UserPost({this.post});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
        topLeft: Radius.circular(20),
        topRight: Radius.circular(145),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PostScreen(post: post),
            ),
          );
        },
        child: Container(
          height: 235,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              Image(
                width: double.infinity,
                height: double.infinity,
                image: AssetImage(post.postPicture),
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _profile(),
                    _stats(),
                    _title(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _profile() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 30,
          color: Colors.white38,
        )
      ]),
      child: Wrap(
        direction: Axis.horizontal,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          CircleProfile(
            user: post.owner,
            size: 45,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                post.owner.name.toUpperCase(),
                style: TextStyle(
                  color: Color(0xff3A3A3A),
                  fontWeight: FontWeight.w900,
                  fontSize: 14,
                ),
              ),
              Text(
                '4 HOURS AGO',
                style: TextStyle(
                  color: Color(0xff3A3A3A),
                  fontSize: 12,
                ),
              ), //TODO calculate time hours or minutes
            ],
          ),
        ],
      ),
    );
  }

  _stats() {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 30,
          color: Colors.white38,
        )
      ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Wrap(
            children: <Widget>[
              //TODO add a listener for the icons
              Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              SizedBox(width: 5),
              Text('${post.likes}')
            ],
          ),
          SizedBox(height: 10),
          Icon(
            Icons.collections_bookmark,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  _title() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          blurRadius: 30,
          color: Colors.black26,
        )
      ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.play_arrow,
              size: 30,
            ),
          ),
          SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  post.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  post.location.toUpperCase(),
                  style: TextStyle(
                    color: Color(0xffC5C5C5),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
