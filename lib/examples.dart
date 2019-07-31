import 'package:flutter/material.dart';

final key = new GlobalKey<MyStatefulWidget1State>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new MyStatefulWidget1(key: key),
          new MyStatefulWidget2(),
        ],
      ),
    );
  }
}

class MyStatefulWidget1 extends StatefulWidget {
  MyStatefulWidget1({ Key key }) : super(key: key);
  State createState() => new MyStatefulWidget1State();
}

class MyStatefulWidget1State extends State<MyStatefulWidget1> {
  String _createdObject = "Hello world!";
  String get createdObject => _createdObject;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(_createdObject),
    );
  }
}

class MyStatefulWidget2 extends StatefulWidget {
  State createState() => new MyStatefulWidget2State();
}

class MyStatefulWidget2State extends State<MyStatefulWidget2> {
  String _text = 'PRESS ME';

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RaisedButton(
        child: new Text(_text),
        onPressed: () {
          setState(() {

            key.currentState.count++;
            _text = key.currentState.createdObject + "count ${key.currentState.count}";
          });
        },
      ),
    );
  }
}