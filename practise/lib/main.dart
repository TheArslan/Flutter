import 'package:flutter/material.dart';
void main()=>runApp(MyApp());
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyApppstates();
  }

}
class MyApppstates extends State<MyApp>{
  TextEditingController _controller=TextEditingController();
  String _change="No text";
  Color as= Colors.amberAccent;

  void _changeText(){

setState(() {
  as=Colors.green.shade200;
  _change=_controller.text;
});




  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Hello") ,),
        body: Container(
          child: Column(
            children: <Widget>[
              TextField(controller: _controller,),
              RaisedButton(child: Text(_change),onPressed: (
                  ){
                _changeText();
              },textColor: as)
            ],
          ),
        ),
      ),

    );
  }
}