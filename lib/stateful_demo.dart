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

class PageOneState extends State<PageOne> with AutomaticKeepAliveClientMixin {
  int count;
  bool checkValue;

  @override
  void initState() {
    count = 0;
    checkValue = true;
    super.initState();
  }

  updateCheckBox(){
    setState(() {
      checkValue = !checkValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('inside PageOne build function');

    return Column(
      children: <Widget>[
        WidgetOne(count),
        WidgetTwo(checkValue, this),
        RaisedButton(
          child: Text('Button'),
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

  var widget = Container(
    child: Text('$count'),
  );

  @override
  Widget build(BuildContext context) {
    ++count;

    print('inside PageTwo build function');
    return widget;
  }
}


class WidgetOne extends StatefulWidget {

  final int count;
  WidgetOne(this.count);

  @override
  WidgetOneState createState() => WidgetOneState();
}

class WidgetOneState extends State<WidgetOne> {

  GlobalKey<WidgetOneState> widgetKey = new GlobalKey<WidgetOneState>();



  @override
  Widget build(BuildContext context) {

    print('one');
    return Text( 'Counter ${widget.count}');
  }
}

class WidgetTwo extends StatelessWidget {

  final bool value;
  final PageOneState parent;

  final WidgetOneState state = new WidgetOneState();

  WidgetTwo(this.value, this.parent);


  printSomething(){
    print('some');
  }

  @override
  Widget build(BuildContext context) {
    print('two');
    return Checkbox(
      value: value,
      onChanged: (val) => state.widgetKey.currentState.setState(printSomething),
    );
  }
}




//
//class PageOne extends StatefulWidget {
//
//  @override
//  PageOneState createState() => PageOneState();
//}
//
//class PageOneState extends State<PageOne> with AutomaticKeepAliveClientMixin {
//
//  bool value = true;
//  int count = 0;
//
//  changeValue(){
//    setState(() {
//      print(value);
//      value = !value;
//    });
//
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    print('inside StatefulDemo build function');
//
//    return Column(
//      children: <Widget>[
//        WidgetOne(counter: count,),
//        WidgetTwo(value: value, parent: this,),
//        RaisedButton(
//          child: Text('Change Count'),
//          onPressed: () {
//            setState(() {
//              ++count;
//            });
//          },
//        ),
//      ],
//    );
//  }
//
//  @override
//  // TODO: implement wantKeepAlive
//  bool get wantKeepAlive => true;
//}
//
//class PageTwo extends StatelessWidget {
//
//  static int count = 0;
//  var widget = Container(
//    child: Text('$count'),
//  );
//
//  @override
//  Widget build(BuildContext context) {
//    ++count;
//    print('pagetwo');
//
//    return widget;
//  }
//}
//
//
//
//class WidgetOne extends StatelessWidget {
//  final int counter;
//  WidgetOne({this.counter});
//
//
//  @override
//  Widget build(BuildContext context) {
//    print('one');
//    return Text(counter.toString());
//  }
//}
//
//class WidgetTwo extends StatelessWidget {
//
//  final PageOneState parent;
//  final bool value;
//  WidgetTwo({this.value, this.parent});
//
//  @override
//  Widget build(BuildContext context) {
//    print('two');
//    return Checkbox(
//      onChanged: (bool) => parent.changeValue(),
//      value: value,
//    );
//  }
//}