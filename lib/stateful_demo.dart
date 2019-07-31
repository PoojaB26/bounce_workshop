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
      child: Text('5'),
    );
  }
}


class WidgetOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    print('widget one');
    return Text( 'widget one');
  }
}

class WidgetTwo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    print('widget two');
    return Text('Widget two');
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