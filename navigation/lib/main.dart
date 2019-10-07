import 'package:flutter/material.dart';
import 'package:navigation/Screens/Home.dart';
import 'package:navigation/Screens/Login.dart';
import 'package:navigation/Screens/Search.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Routing",
      routes: <String,WidgetBuilder>{
        '/home': (BuildContext context)=>home(),
        '/login': (BuildContext context)=>login(),
        '/search': (BuildContext context)=>search(),



      },
      home: login(),
    );

  }

}
