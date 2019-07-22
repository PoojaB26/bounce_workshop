
import 'package:bounce_workshop/ui/screens/details_screen.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {


  final String username = 'John Dow';
  navigate(context){
    Route route = MaterialPageRoute(
      builder: (_)
        => DetailsScreen(username: username,)
    );
    Navigator.of(context).push(route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.amber,
      appBar: AppBar(),

      body: Column(
        children: <Widget>[
          Text('Hello'),
          RaisedButton(
            onPressed: () => navigate(context),
            child: Text('NAVIGATE'),
          ),
          Hero(
            tag: 'heroTag',
            child: Container(
                height: 120,
                child: Image.asset('assets/beer.png')
            ),
          )
        ],
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
      ),

    );
  }
}





















//import 'package:bounce_workshop/ui/common/list_item.dart';
//import 'package:bounce_workshop/ui/screens/details_screen.dart';
//import 'package:flutter/material.dart';
//
//class ListScreen extends StatelessWidget {
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(),
//        floatingActionButton: FloatingActionButton(
//          child: Icon(Icons.navigate_next),
//          onPressed: () => {},
//        ),
//        body: ListView.builder(
//            itemCount: 10,
//            itemBuilder: (context, index) => ListItem(index: index,)));
//  }
//
//
//}
//
