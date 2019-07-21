

import 'package:bounce_workshop/screens/details_screen.dart';
import 'package:bounce_workshop/screens/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Navigate{

  static pushToDetailsScreen(context, username){

    Route route = MaterialPageRoute(builder: (_) => DetailsScreen(username: username));
    Navigator.of(context).push(route);

  }


}