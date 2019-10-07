import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppstate();
  }
}

class MyAppstate extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  TabBar makeTabBar() {
    return TabBar(
      tabs: <Widget>[
        Tab(icon: Icon(Icons.home)),
        Tab(
          icon: Icon(Icons.person),
        )
      ],
      controller: tabController,
    );
  }

  TabBarView makeTabBarView(tabs) {
    return TabBarView(
      children: tabs,
      controller: tabController,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          bottom: makeTabBar(),
        ),
        body: makeTabBarView(<Widget>[Firstwidget(), SecondWidget()]),
      ),
    );
  }
}

class Firstwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text("Hello First"),
    );
  }
}

class SecondWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text("hello second"),
    );
  }
}
