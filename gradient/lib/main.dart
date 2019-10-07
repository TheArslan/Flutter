import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [const Color(0xFF915FB5), const Color(0xFFCA436B)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  tileMode: TileMode.clamp),
                  ),
        ),
      ),
    );
  }
}
