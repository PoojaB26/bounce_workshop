import 'package:bounce_workshop/ui/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Navigate{

  static pushToDetailsScreen(context, username)  {

    Route route = MaterialPageRoute(builder: (context) => DetailsScreen(username: username));
    Navigator.of(context).push(route);

  }


}


