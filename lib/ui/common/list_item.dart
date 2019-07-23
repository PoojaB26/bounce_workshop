import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {

  final int index;
  ListItem({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Card(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text('Index $index'),
          )),
    );
  }
}








