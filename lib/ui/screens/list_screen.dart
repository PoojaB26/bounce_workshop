
import 'package:bounce_workshop/ui/common/list_item.dart';
import 'package:bounce_workshop/ui/screens/details_screen.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {

  final int something;
  ListScreen({this.something});

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {








  ThemeData theme = ThemeData.light();
  bool isLightThemed = true;

  toggle(){
    isLightThemed = !isLightThemed;

    setState(() {
      if(isLightThemed)
        theme = ThemeData.light();
      else
        theme = ThemeData.dark();
    });
  }



  @override
  void initState() {
    // TODO: implement initState
    print(widget.something);
    super.initState();
  }


  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(ListScreen oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

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
    return Theme(
      child: Scaffold(
        appBar: AppBar(),

        body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index)
            => ListItem(index: index)
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () => toggle(),
        ),
      ),
      data: theme,
    );
  }
}

