import 'package:flutter/material.dart';


class NotificationIcon extends StatelessWidget {

  final int itemCount;
  NotificationIcon(this.itemCount);

  @override
  Widget build(BuildContext context) {
    print(itemCount);
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
              child: Text('$itemCount', style: TextStyle(color: Colors.white, fontSize: 11),),
            ),
          ),
        ],
      ),
    );
  }
}

