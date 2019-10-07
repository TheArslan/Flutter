import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: snackbar(),
));

class snackbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Snackstates();
  }
}


class Snackstates extends State<snackbar> {
  GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  String _text = "";

  void _Onchanged(String value) {
    setState(() {
      _text = value;
    });
  }


  void _showsnack(String value) {
    if (value.isEmpty) return;
    AlertDialog dialog = new AlertDialog(
      title: Text("SnackBar"),
      content: Text(value,
          style: TextStyle(fontSize: 30.0)),
      actions: <Widget>[
        FlatButton(
            child: Text("Show Snack"),
            onPressed: () {
              scaffold.currentState.showSnackBar(SnackBar(content: Text(_text)));
              Navigator.pop(context);
            }),
        FlatButton(
          child: Text("Do Nothing"),
          onPressed: () {    },
        )
      ],
    );
    showDialog(
        context: context,
        child: dialog
        );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
         key: scaffold,
        appBar: AppBar(
          title: Text('Smackbar'),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                TextField(onChanged: (String value) {
                  _Onchanged(value);
                },),
                RaisedButton(
                    child: Text("hello"),
                    onPressed: () {
                      _showsnack(_text);
                    })
              ],
            ),
          ),
        ),
      );

  }
}
