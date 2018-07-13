import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'RegisterVC.dart';
import 'ForgetPasswordVC.dart';
class LoginView extends StatefulWidget{
  @override
  _LoginViewState createState() => new _LoginViewState();
}
class _LoginViewState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("登录"),),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
                height: 50.0,
                child: new TextFormField(
                  decoration: new InputDecoration(
                      labelText: '手机号码：'
                  ),
                ),
              ),
              new Container(
                height: 50.0,
                child: new TextFormField(
                  decoration: new InputDecoration(
                      labelText: '密码：'
                  ),
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.height-40.0,
                margin: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0,bottom: 15.0),
                height: 47.0,
                child: new RaisedButton(onPressed: (){},child: new Text("登录",style: new TextStyle(color: Colors.white,fontSize: 16.0),),color: Colors.blue,elevation: 8.0,),
              ),
              new Container(
                  width: MediaQuery.of(context).size.height-40.0,
                  margin: const EdgeInsets.only(left: 30.0,right: 30.0,bottom: 15.0),
                  height: 47.0,
                  child: new RaisedButton(
                      onPressed: (){
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                              builder: (context){
                                return new RegisterView();
                              }
                          ),
                        );
                      },
                      child: new Text("注册",style: new TextStyle(fontSize: 16.0)),
                      color: Colors.white,elevation: 8.0,
                  ),
              ),
              new FlatButton(
                  onPressed: (){
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                          builder: (context){
                            return new ForgetPasswordView();
                          }
                      ),
                    );
                  },
                  child: new Text("忘记密码?")
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