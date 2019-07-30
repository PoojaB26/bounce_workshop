import 'package:bounce_workshop/ui/common/notification_icon.dart';
import 'package:bounce_workshop/ui/popular_posts_list.dart';
import 'package:bounce_workshop/ui/posts_data.dart';
import 'package:bounce_workshop/ui/profile_data.dart';
import 'package:bounce_workshop/ui/recent_posts_list.dart';
import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {

  final String name;
  ProfilePage({this.name});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  static int itemCount = 5;

  ifEven(itemCount){
    return itemCount % 2 == 0;
  }

  @override
  Widget build(BuildContext context) {

    print(widget.name);

    final AppBar customAppBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: <Widget>[
        NotificationIcon(itemCount)
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _addNewSection(),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[
            ProfileData(),
            PostsData(),
            ifEven(itemCount) ? PopularPostsList() : RecentPostsList(),
          ],
        ),
      ),
    );
  }

  _addNewSection() {
    setState(() {
      itemCount = itemCount + 1;
    });
  }
}

