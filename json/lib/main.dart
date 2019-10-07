import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppStates();
  }
}

class MyAppStates extends State<MyApp> {
  final String url = "https://jsonplaceholder.typicode.com/users";
  List data;
  Future<String> getSwData() async {
    var res = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    setState(() {
      var resbody = json.decode(res.body);
      data = resbody;
    });
    return "success";
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              child: Card(
            child: Container(
                padding: EdgeInsets.all(15.0),
                child: Text(data[index]['address']['city'])),
          ));
        },
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getSwData();
  }
}
