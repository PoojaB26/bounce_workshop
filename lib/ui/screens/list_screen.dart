import 'package:bounce_workshop/ui/common/list_item.dart';
import 'package:bounce_workshop/ui/screens/details_screen.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigate_next),
          onPressed: () => {},
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => ListItem(index: index,)));
  }


}

