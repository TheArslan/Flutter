import 'package:flutter/material.dart';
class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.home),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: (){
            Navigator.of(context).pushNamed('/search');

          },
          ),
          IconButton(icon: Icon(Icons.exit_to_app),onPressed: (){
            Navigator.of(context).pushNamedAndRemoveUntil("/login", (Route<dynamic> route)=>false);

          },)
        ],
      )
    );
  }

}