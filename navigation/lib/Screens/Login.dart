import 'package:flutter/material.dart';


class login extends StatelessWidget {
  void gohome(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route)=>false);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Container(
          child: Center(
              child: Column(
            children: <Widget>[
              Container(
                  width: 350,
                  margin: EdgeInsets.only(top: 150),
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                        labelText: "Username", icon: Icon(Icons.email)),
                    cursorColor: Colors.green,
                    style: TextStyle(color: Colors.black),
                  )),
              Container(
                  padding: EdgeInsets.all(10.0),
                  width: 350,
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                        labelText: "Password", icon: Icon(Icons.lock)),
                    cursorColor: Colors.green,
                    style: TextStyle(color: Colors.black),
                    obscureText: true,
                  )),
              Container(
                padding: EdgeInsets.all(20.0),
                child: RaisedButton(
                  onPressed: (){
                    gohome(context);
                  },
                  child: Text("Login"),
                ),
              )
            ],
          )),
        ));
  }
}
