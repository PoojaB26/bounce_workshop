import 'package:bounce_workshop/screens/details_screen.dart';
import 'package:bounce_workshop/screens/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluro/fluro.dart';

class Navigate{

  static Future<String> pushToDetailsScreen(context, username) async {

    Route route = MaterialPageRoute(builder: (context) => DetailsScreen(username: username));
    String name = await Navigator.of(context).push(route);

    return name;
  }


}


