import 'package:flutter/material.dart';


class NotificationIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Icon(Icons.notifications, color: Colors.grey, size: 35,),
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.blue,
              child: Text('5', style: TextStyle(color: Colors.white, fontSize: 11),),
            ),
          ),
        ],
      ),
    );
  }
}

