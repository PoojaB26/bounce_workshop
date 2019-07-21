import 'package:bounce_workshop/routes.dart';
import 'package:bounce_workshop/screens/details_screen.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final String username = 'Pooja';
  final String url = 'assets/beer.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: 'heroTag',
              child: Container(
                  height: 150,
                  child: Image.asset('assets/beer.png')),
            ),
            RaisedButton(
              onPressed: () async {
                Route route = MaterialPageRoute(
                    builder: (context) => DetailsScreen(username: username));
                var name = await Navigator.of(context).push(route);
                print(name);
              },
            )
          ],
        ));
  }
}
