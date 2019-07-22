//import 'package:bounce_workshop/ui/screens/details_screen.dart';
//import 'package:flutter/material.dart';
//
//class ListItem extends StatelessWidget {
//
//  final String username = 'Pooja';
//  final String url = 'assets/beer.png';
//  final int index;
//
//  ListItem({this.index});
//
//  void navigate(context) async {
//    Route route = MaterialPageRoute(
//        builder: (context) => DetailsScreen(username: username, index: index,));
//    var name = await Navigator.of(context).push(route);
//    print(name);
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      padding: EdgeInsets.all(20),
//      child: InkWell(
//        onTap: () => navigate(context) ,
//        child: Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Text(index.toString()),
//              ItemIcon(index: index),
//            ],
//          ),
//        ),
//    );
//  }
//}
//
//class ItemIcon extends StatelessWidget {
//  const ItemIcon({
//    Key key,
//    @required this.index,
//  }) : super(key: key);
//
//  final int index;
//
//  @override
//  Widget build(BuildContext context) {
//    return Hero(
//      tag: 'heroTag$index',
//      child: Container(
//        alignment: Alignment.center,
//          height: 120,
//          child: Image.asset('assets/beer.png')),
//    );
//  }
//}
