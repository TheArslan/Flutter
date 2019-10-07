import 'package:flutter/material.dart';
class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(50.0),
              child: Text("Do")
            ),
            Container(
              padding: EdgeInsets.all(40.0),
              child: Text("Settings"),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Text("here")
            )

          ],
        ),
      );

  }

}