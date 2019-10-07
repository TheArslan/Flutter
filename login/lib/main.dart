import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'package:login/login.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Myappstates();
  }
}

class _Myappstates extends State<Myapp> {
  GlobalKey<ScaffoldState> _snackbar = GlobalKey<ScaffoldState>();
  String _title = 'Please Login';
  Widget _screen;
  login _login;
  home _home;

  _Myappstates() {
    _login = login(onSubmit: () {
      onSubmit();
    });
    _home = home();
    _screen = _home;
  }

  void onSubmit() {
    print("Hello");
    _snackbar.currentState.showSnackBar(
      SnackBar(
        content: Text(_login.username),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "Login Demo",
        home: Scaffold(
          key: _snackbar,
          appBar: AppBar(
            title: Text(_title),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {},
              )
            ],
          ),
          body: Center(child: _login),
        ));
  }
}
