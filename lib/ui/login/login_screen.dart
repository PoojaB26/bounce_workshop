import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width * 0.75;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: width,
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    border: UnderlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(25.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.grey[800]),
//                    hintText: "Type in your text",
                    fillColor: Colors.white),
              ),
            ),

            MaterialButton(
              minWidth: width,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(23))
              ),
              color: Colors.white,
              child: Text('Let\'s Go'),
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}

