import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int radiovalue=0;
  void changehppened(int value){
    setState(() {
      radiovalue=value;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("palent"),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        //  alignment: Alignment.topCenter,
        child: ListView(
          padding: EdgeInsets.all(2.0),
          children: <Widget>[
            Image.asset(
              'images/planet.png',
              height: 133,
              width: 200,
            ),
            Container(
              margin: EdgeInsets.all(3.0),
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person_outline),
                          labelText: "Your weight on Earth"),
                      autocorrect: true,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[Radio<int>(value: 0,groupValue: radiovalue,onChanged: changehppened,activeColor: Colors.orange,),
                    Text("Pluto",style: TextStyle(color: Colors.white),),

                    Radio<int>(value: 1,groupValue: radiovalue,onChanged: changehppened,activeColor: Colors.red,),
                    Text("Mars",style: TextStyle(color: Colors.white),),
                    Radio<int>(value: 2,groupValue: radiovalue,onChanged: changehppened,activeColor: Colors.brown,),
                    Text("Venus",style: TextStyle(color:Colors.white),)],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
