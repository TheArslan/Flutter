import 'package:flutter/material.dart';
import './UI/Image.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

void main() async {
  List val=await getJson();
  int length=val.length;
  runApp(MaterialApp(
      title: "jsonImage",
      home: image(length,val)

  ));
}

Future<List> getJson() async{
 String apiUrl="https://jsonplaceholder.typicode.com/photos";
 http.Response response=await http.get(apiUrl);
 return json.decode(response.body);
}
