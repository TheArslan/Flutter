import 'package:flutter/material.dart';
class search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Search"),
      ),
      body:Column(children: <Widget>[
          Container(
        margin: EdgeInsets.only(top:150),
        child: TextField(decoration: InputDecoration(icon: Icon(Icons.search)),),
          ),
        RaisedButton(child: Text("Hello"),onPressed: (){

          Navigator.of(context).pushNamedAndRemoveUntil( '/home',(Route<dynamic> route)=>false);
        },)
        ]
      )
      
      );
  }

}