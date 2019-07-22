import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {

  final String username;
  DetailsScreen({this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).maybePop(),
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Hi $username'),
      ),
      body: Hero(
        tag: 'heroTag',
        child: Container(
            height: 420,
            child: Image.asset('assets/beer.png')
        ),
      ),
    );
  }
}































//import 'package:flutter/material.dart';
//
//class DetailsScreen extends StatelessWidget {
//
//
//  final String username;
//  final int index;
//  DetailsScreen({this.username, this.index})
//      : assert(username != null),
//        assert(index!=null);
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        leading: IconButton(icon: Icon(Icons.arrow_back),
//        onPressed: () => Navigator.pop(context, "Hello"),),
//        title: Text('Hi $username'),
//      ),
//      body:  Hero(
//        tag: 'heroTag$index',
//        child: Container(
//          alignment: Alignment.center,
//            height: 300,
//            child: Image.asset('assets/beer.png')),
//      ),
//    );
//  }
//}
