import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TheGridview().build(),
      ),
    );

  }
}
class TheGridview{
Card makeGridCell(String name,IconData icon){
 return Card(
elevation: 1.0,
child: Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  mainAxisSize: MainAxisSize.min,
  verticalDirection: VerticalDirection.down,
  children: <Widget>[
    Center(child: Icon(icon),
    ),
   Center(child: Text(name))
  ],),
 );
} 
GridView build(){
  return GridView.count(
    primary: true,
    padding: EdgeInsets.all(1.0),
    crossAxisCount: 2,
    childAspectRatio: 1.0,
    mainAxisSpacing: 1.0,
    crossAxisSpacing: 1.0,
    children: <Widget>[
      makeGridCell("Home", Icons.home),
      makeGridCell("email", Icons.email),
      makeGridCell("phone", Icons.phone),
      makeGridCell("Contacts", Icons.contacts)
    ],
  );
}

}