import 'package:flutter/material.dart';

void main() => runApp(appbar());

class appbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _appstates();
  }
}

class _appstates extends State<appbar> {
  String _title = 'Appbar';
  String _newstate="No state";

  void _pressed(String message) {
    setState(() {
      _newstate=message;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.add_alert),
                onPressed: () {
                  _pressed("Alert Pressed");
                }),
            IconButton(
                icon: Icon(Icons.print),
                onPressed: () {
                  _pressed("Print Pressend");
                })
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(child: Text(_newstate)),
        ),
      ),
    );
  }
}
