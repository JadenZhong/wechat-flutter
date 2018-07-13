import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'RegisterVC.dart';
class ForgetPasswordView extends StatefulWidget{
  @override
  _ForgetPasswordViewState createState() => new _ForgetPasswordViewState();
}
class _ForgetPasswordViewState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(title: new Text("找回密码"),),
        body: new Center(
          child: new ListView(
            children: <Widget>[
              new Container(
                height: 50.0,
                child: new TextFormField(
                  decoration: new InputDecoration(
                      labelText: '国家/地区：'
                  ),
                ),
              ),
              new Container(
                height: 50.0,
                child: new TextFormField(
                  decoration: new InputDecoration(
                      labelText: '请输入手机号：'
                  ),
                ),
              ),
              new Row(
                children: <Widget>[
                  new Container(
                    child: new TextFormField(
                      decoration: new InputDecoration(
                          labelText: '请输入验证码：'
                      ),
                    ),
                    height: 50.0,
                    width: MediaQuery.of(context).size.width-140.0,
                  ),
                  new Container(
                    margin: const EdgeInsets.only(top: 18.0,left: 25.0),
                    child: new FlatButton(onPressed: (){}, child: new Text("获取验证码",style: new TextStyle(fontSize: 13.0,color: Colors.white),)),
                    height: 35.0,
                    width: 100.0,
                    color: Colors.blue,
                  )
                ],
              ),
              new Container(
                height: 50.0,
                child: new TextFormField(
                  decoration: new InputDecoration(
                      labelText: '请输入新密码：'
                  ),
                ),
              ),
              new Container(
                height: 50.0,
                child: new TextFormField(
                  decoration: new InputDecoration(
                      labelText: '请确认新密码：'
                  ),
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.height-40.0,
                margin: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0,bottom: 15.0),
                height: 47.0,
                child: new RaisedButton(onPressed: (){},child: new Text("确认",style: new TextStyle(color: Colors.white,fontSize: 16.0),),color: Colors.blue,elevation: 8.0,),
              ),
            ],
          ),
        )
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}