import 'package:flutter/material.dart';

void main() => runApp(myapp());

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('hy')),
          body: Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  Text("Hello"),
                  Text("World"),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(5.0),
                                child: Text('Hello'),
                              ),
                              Container(
                                padding: EdgeInsets.all(5.0),
                                child: Text('World'),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(5.0),
                                child: Text('Hello'),
                              ),
                              Container(
                                padding: EdgeInsets.all(5.0),
                                child: Text('World'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )),
    );
  }


}
