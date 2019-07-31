import 'package:flutter/material.dart';

class StatefulDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "Page Stateful",),
              Tab(text: "Page Stateless",)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            PageOne(),
            PageTwo()
          ],
        ),
      ),
    );
  }

}

class PageOne extends StatefulWidget {

  @override
  PageOneState createState() => PageOneState();
}

class PageOneState extends State<PageOne>  {
  @override
  Widget build(BuildContext context) {
    print('inside PageOne build function');

    return Column(
      children: <Widget>[
        WidgetOne(),
        WidgetTwo(),
        RaisedButton(
          child: Text('Button'),
          onPressed: () {
            setState(() {

            });
          },
        ),
      ],
    );
  }

}

class PageTwo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    print('inside PageTwo build function');
    return Container(
      child: Text(0.toString()),
    );
  }
}


class WidgetOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    print('one');
    return Text( 'Counter 0');
  }
}

class WidgetTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print('two');
    return Text('Two');
  }
}

