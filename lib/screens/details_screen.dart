import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {


  final String username;
  DetailsScreen({this.username})
      : assert(username != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context, "Hello"),),
        title: Text('Hi $username'),
      ),
      body:  Hero(
        tag: 'heroTag',
        child: Container(
          alignment: Alignment.center,
            height: 300,
            child: Image.asset('assets/beer.png')),
      ),
    );
  }
}
