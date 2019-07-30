import 'package:flutter/material.dart';

class StatefulDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Page One"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "One",),
              Tab(text: "Two",)
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

class PageOneState extends State<PageOne> with AutomaticKeepAliveClientMixin {

  bool value = true;
  int count = 0;

  changeValue(){
  setState(() {
    print(value);
    value = !value;
  });

  }

  @override
  Widget build(BuildContext context) {
    print('inside StatefulDemo build function');

    return Column(
      children: <Widget>[
        WidgetOne(counter: count,),
        WidgetTwo(value: value, parent: this,),
        RaisedButton(
          child: Text('Change Count'),
          onPressed: () {
            setState(() {
                ++count;
            });
          },
        ),
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class PageTwo extends StatelessWidget {

  static int count = 0;
  final widget = Container(
    child: Text('$count'),
  );

  @override
  Widget build(BuildContext context) {
    ++count;
    print('pagetwo');

    return widget;
  }
}



class WidgetOne extends StatelessWidget {
  final int counter;
  WidgetOne({this.counter});


  @override
  Widget build(BuildContext context) {
    print('one');
    return Text(counter.toString());
  }
}

class WidgetTwo extends StatelessWidget {

  final PageOneState parent;
  final bool value;
  WidgetTwo({this.value, this.parent});

  @override
  Widget build(BuildContext context) {
    print('two');
    return Checkbox(
      onChanged: (bool) => parent.changeValue(),
      value: value,
    );
  }
}