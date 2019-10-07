import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Hello",
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
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
  final TextEditingController _us=TextEditingController();
  String text='';
  GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  void onChange(String value){
    setState(() {
      text=value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: scaffold,
      appBar: AppBar(
        title: Text("Textfield"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Home"),
                      content: Text("Do you want to Go Home"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("yes"),
                          onPressed: () {
                            scaffold.currentState.showSnackBar(
                                SnackBar(content: Text("You are in home now")));
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                  });
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Center(
        child: Column(children: <Widget>[
          TextField(controller: _us,autocorrect: true,maxLines: 4,decoration: InputDecoration( labelText: "Enter name",icon: Icon(Icons.print)),),
          RaisedButton(child: Text("Submit"),onPressed: (){
            scaffold.currentState.showSnackBar(SnackBar(content: Text(_us.text)));
          },)
        ],),
      ),),
    );
  }
}
