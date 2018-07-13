import 'package:flutter/material.dart';

class Gather extends StatefulWidget{
  @override
  _GatherState createState() => new _GatherState();
}
class _GatherState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Container(
            height: 64.0,
            color: Colors.black,
          ),
          new Container(
            margin: new EdgeInsets.only(top: 40.0),
            width: 150.0,
            height: 150.0,
            child: new Image.asset('images/codeimg.png',width: 150.0,height: 150.0,),
          ),
          new Container(
            margin: new EdgeInsets.only(top: 30.0,bottom: 20.0),
            child: new Text("gdceuwfopewbhjcvedgwfewuf",style: new TextStyle(fontSize: 18.0),),
          ),
          new Container(
            margin: new EdgeInsets.only(top: 10.0,bottom: 20.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new FlatButton(onPressed: (){}, child: new Text("设置金额",style: new TextStyle(color: Colors.red[400],fontSize: 20.0),)),
                new FlatButton(onPressed: (){}, child: new Text("保存图片",style: new TextStyle(color: Colors.red[400],fontSize: 20.0),)),
              ],
            )
          ),
          new Container(
            margin: new EdgeInsets.only(top: 30.0,bottom: 20.0,left: 30.0,right: 30.0),
            child: new MaterialButton(onPressed: (){},color: Colors.red[400],child: new Text("选择地址接收",style: new TextStyle(color: Colors.white,fontSize: 18.0),),minWidth: 300.0,height: 50.0,),
          ),
        ],
      ),
    );
  }
}