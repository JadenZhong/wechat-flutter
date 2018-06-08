import 'package:flutter/material.dart';

class XKTabBar extends StatelessWidget{
  final List<BottomNavigationBarItem> listSet = [new BottomNavigationBarItem(icon: new Icon(Icons.share), title: new Text("1")),new BottomNavigationBarItem(icon: new Icon(Icons.map),title: new Text("通讯录"))];
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("title")),
      bottomNavigationBar: new BottomNavigationBar(items: listSet),
      body: new Center(

      ),
    );
  }
}