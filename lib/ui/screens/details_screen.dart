import 'package:bounce_workshop/services/api_services.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {


  final String username;
  final int index;
  DetailsScreen({this.username, this.index})
      : assert(username != null),
        assert(index!=null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context, "Hello"),),
        title: Text('Hi $username'),
      ),
      body:  Column(
        children: <Widget>[

          FutureBuilder(
        future: getDelayedResponse(),
        builder: (context, snapshot){
          if(snapshot.hasData)
            return Text('${snapshot.data}');
          else
            return CircularProgressIndicator();
        },
      ),


          Hero(
            tag: 'heroTag$index',
            child: Container(
              alignment: Alignment.center,
                height: 300,
                child: Image.asset('assets/beer.png')),
          ),
        ],
      ),
    );
  }
}
