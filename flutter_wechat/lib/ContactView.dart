import 'package:flutter/material.dart';
class ContactView extends StatefulWidget{
  @override
  _ContactViewState createState() => new _ContactViewState();
}
class _ContactViewState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Center(
        child: new Text("通讯录"),
      ),
    );
  }
}