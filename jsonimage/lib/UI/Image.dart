import 'package:flutter/material.dart';

class image extends StatelessWidget {
  int length;
  List data;

  image(int length, List data) {
    this.length = length;
    this.data = data;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Image Json"),
          centerTitle: true,
        ),
        body: Container(
            child: ListView.builder(
                itemCount: length,
                itemBuilder: (BuildContext context, int Position) {
                  return InkWell(
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          Text("${data[Position]['id']}"),
                          Image.network("${data[Position]['url']}")
                       //   FadeInImage(
                         //     image: NetworkImage("${data[Position]['url']}"),
                         // ),


                          //"${data[Position]['id']}")
                        ],
                      ),
                    ),
                  );
                })));
  }
}
