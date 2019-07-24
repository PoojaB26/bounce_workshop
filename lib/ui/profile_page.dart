import 'package:bounce_workshop/ui/common/notification_icon.dart';
import 'package:bounce_workshop/ui/popular_posts_list.dart';
import 'package:bounce_workshop/ui/posts_data.dart';
import 'package:bounce_workshop/ui/profile_data.dart';
import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {

  final AppBar customAppBar = AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    actions: <Widget>[
      NotificationIcon()
    ],
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            ProfileData(),
            PostsData(),
            PopularPostsList(),
          ],
        ),
      ),
    );
  }
}

