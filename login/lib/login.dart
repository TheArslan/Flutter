import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class login extends StatelessWidget {
 const login({
   Key key,
   @required this.onSubmit,
}): super(key:key);
  final VoidCallback onSubmit;
  static final TextEditingController _user = TextEditingController();
  static final TextEditingController _pass = TextEditingController();
  String get username=> _user.text;
  String get password=> _pass.text;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
          margin: EdgeInsets.only(top: 200.0),
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: _user,
                decoration: InputDecoration(hintText: "Enter userName"),
              )),
          Container(
            padding: EdgeInsets.all(5.0),
            child: TextField(
              controller: _pass,
              decoration: InputDecoration(hintText: "Enter Password"),
              obscureText: true,
            ),
          ),
          RaisedButton(
            child: Text("Button"),
            onPressed: onSubmit,
          )
        ],
      ),
    ));
  }
}
