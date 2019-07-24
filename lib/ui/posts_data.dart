import 'package:flutter/material.dart';


class PostsData extends StatelessWidget {

  getData(String value, String name){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(value, style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),),
          Text(name, style: TextStyle(color: Colors.grey[400], fontSize: 13),)
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              getData('36', 'POSTS'),
              getData('12.1K', 'FOLLOWERS'),
              getData('120', 'FOLLOWING')
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}