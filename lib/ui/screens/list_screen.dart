import 'package:bounce_workshop/ui/common/list_item.dart';
import 'package:bounce_workshop/ui/screens/details_screen.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  bool isLightThemed = true;
  var theme1 = ThemeData.light();

  changeTheme() {
    isLightThemed = !isLightThemed;

    setState(() {
      if (isLightThemed)
        theme1 = ThemeData.light();
      else
        theme1 = ThemeData.dark();
    });

    print(isLightThemed);
  }

  @override
  Widget build(BuildContext context) {
    print(theme1);
    return new Theme(
        child: Scaffold(
            appBar: AppBar(),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.navigate_next),
              onPressed: () => changeTheme(),
            ),
            body: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => ListItem(
                      index: index,
                    ))),
        data: theme1);
  }
}
