import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String _text = 'No text';

  void _onChange(String value) {
    setState(() {
      _text = value;
    });
  }

  void _show(String value) {
    AlertDialog dialog = AlertDialog(
      content: Text(value, style: TextStyle(fontSize: 30.0)),
      actions: <Widget>[],
    );
    showDialog(context: context, child: dialog);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              TextField(
                onChanged: (String value) {
                  _onChange(value);
                },
              ),
              RaisedButton(
                child: Text("Hello"),
                onPressed: () {
                  _show(_text);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
