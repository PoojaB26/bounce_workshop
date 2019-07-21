import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {


  final String username;
  DetailsScreen({this.username})
      : assert(username != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi $username'),
      ),
    );
  }
}
