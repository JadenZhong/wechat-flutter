import 'package:flutter/material.dart';
class MineView extends StatefulWidget{
  @override
  _MineViewState createState() => new _MineViewState();
}
class _MineViewState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            padding:const EdgeInsets.only(top: 20.0),
            child: new Container(
              height: 80.0,
              child: new ListTile(
                leading: new Image.asset("images/xk.jpg"),
                title: new Text("Tony"),
                subtitle: new Text("微信号：ty001"),
                trailing: new Icon(Icons.fullscreen),
              ),
              color: Colors.white,
            ),
            color: Colors.grey[200],
          ),
          new Container(
            padding:const EdgeInsets.only(top: 20.0),
            child: new Container(
              child: new ListTile(
                leading: new Icon(Icons.call_to_action),
                title: new Text("钱包"),
              ),
              color: Colors.white,
              height: 50.0,
            ),
            color: Colors.grey[200],
          ),
          new Container(
            padding:const EdgeInsets.only(top: 20.0),
            child: new Container(
              child: new ListTile(
                leading: new Icon(Icons.dashboard),
                title: new Text("收藏"),
              ),
              color: Colors.white,
              height: 50.0,
            ),
            color: Colors.grey[200],
          ),
          new Container(
            child: new ListTile(
              leading: new Icon(Icons.photo),
              title: new Text("相册"),
            ),
            color: Colors.white,
            height: 50.0,
          ),
          new Container(
            child: new ListTile(
              leading: new Icon(Icons.credit_card),
              title: new Text("卡包"),
            ),
            color: Colors.white,
            height: 50.0,
          ),
          new Container(
            child: new ListTile(
              leading: new Icon(Icons.tag_faces),
              title: new Text("表情"),
            ),
            color: Colors.white,
            height: 50.0,
          ),
          new Container(
            padding:const EdgeInsets.only(top: 20.0),
            child: new Container(
              child: new ListTile(
                leading: new Icon(Icons.settings),
                title: new Text("设置"),
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