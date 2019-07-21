import 'package:bounce_workshop/routes.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () => Navigate.pushToDetailsScreen(context, 'Pooja'),
          )
        ],
      )
    );
  }
}
