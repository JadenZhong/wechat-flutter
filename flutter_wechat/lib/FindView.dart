import 'package:flutter/material.dart';
class FindView extends StatefulWidget{
  @override
  _FindViewState createState() => new _FindViewState();
}
class _FindViewState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            padding:const EdgeInsets.only(top: 20.0),
            child: new Container(
              height: 50.0,
              child: new ListTile(
                leading: new Icon(Icons.camera),
                title: new Text("朋友圈"),
              ),
              color: Colors.white,
            ),
            color: Colors.grey[200],
          ),
          new Container(
            padding:const EdgeInsets.only(top: 20.0),
            child: new Container(
              height: 50.0,
              child: new ListTile(
                leading: new Icon(Icons.crop_free),
                title: new Text("扫一扫"),
              ),
              color: Colors.white,
            ),
            color: Colors.grey[200],
          ),
          new Container(
            padding:const EdgeInsets.only(top: 20.0),
            child: new Container(
              height: 50.0,
              child: new ListTile(
                leading: new Icon(Icons.star),
                title: new Text("看一看"),
              ),
              color: Colors.white,
            ),
            color: Colors.grey[200],
          ),
          new Container(
            child: new ListTile(
              leading: new Icon(Icons.search),
              title: new Text("搜一搜"),
            ),
            color: Colors.white,
            height: 50.0,
          ),
          new Container(
            padding:const EdgeInsets.only(top: 20.0),
            child: new Container(
              child: new ListTile(
                leading: new Icon(Icons.people),
                title: new Text("附近的人"),
              ),
              color: Colors.white,
              height: 50.0,
            ),
            color: Colors.grey[200],
          ),
          new Container(
            child: new ListTile(
              leading: new Icon(Icons.hourglass_empty),
              title: new Text("漂流瓶"),
            ),
            color: Colors.white,
            height: 50.0,
          ),
          new Container(
            padding:const EdgeInsets.only(top: 20.0),
            child: new Container(
              child: new ListTile(
                leading: new Icon(Icons.shopping_cart),
                title: new Text("购物"),
              ),
              color: Colors.white,
              height: 50.0,
            ),
            color: Colors.grey[200],
          ),
          new Container(
            child: new ListTile(
              leading: new Icon(Icons.games),
              title: new Text("游戏"),
            ),
            color: Colors.white,
            height: 50.0,
          ),
          new Container(
            padding:const EdgeInsets.only(top: 20.0),
            child: new Container(
              child: new ListTile(
                leading: new Icon(Icons.apps),
                title: new Text("小程序"),
              ),
              color: Colors.white,
              height: 50.0,
            ),
            color: Colors.grey[200],
          ),
        ],
      )
    );
  }
}