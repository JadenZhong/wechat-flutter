import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:phonewallet/Login/RegisterVC.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class LoginVC extends StatefulWidget{
  @override
  _LoginVCState createState() => new _LoginVCState();
}
class _LoginVCState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new DecoratedBox(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              colors: <Color>[const Color.fromRGBO(200, 62, 26, 1.0),const Color.fromRGBO(228, 148, 55, 1.0), const Color.fromRGBO(200, 62, 26, 1.0)],
              begin: const FractionalOffset(0.0, 0.5),
              end: const FractionalOffset(1.0, 0.5),
            )
          ),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Container(
                  margin: new EdgeInsets.only(top: 80.0,bottom: 30.0),
                  child: new Image.asset("images/codeimg.png",width: 70.0,height: 70.0,),
                ),
                new Container(
                  margin: new EdgeInsets.only(top: 0.0,bottom: 30.0),
                  child: new Text("OFC E-Wallet",style: new TextStyle(color: Colors.white70,fontSize: 20.0),),
                ),
                new Container(
                  decoration: new BoxDecoration(
                    border: new Border.all(width: 1.0, color: Colors.white),
                    borderRadius: const BorderRadius.all(const Radius.circular(25.0)),
                  ),
                  width: MediaQuery.of(context).size.width-60.0,
                  height: 50.0,
                  child: new Container(
                    margin: new EdgeInsets.only(left: 30.0,),
                    child: new TextField(
                      decoration: new InputDecoration(
                        hintText: "请输入账号",
                        hintStyle: new TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                      style:new TextStyle(color: Colors.white),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
                new Text(" "),
                new Text(" "),
                new Container(
                  width: MediaQuery.of(context).size.width-60.0,
                  height: 50.0,
                  decoration: new BoxDecoration(
                    border: new Border.all(width: 1.0, color: Colors.white),
                    borderRadius: const BorderRadius.all(const Radius.circular(25.0)),
                  ),
                  child: new Container(
                    margin: new EdgeInsets.only(left: 30.0,),
                    child: new TextField(
                      decoration: new InputDecoration(
                        hintText: "请输入密码",
                        hintStyle: new TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                      style:new TextStyle(color: Colors.white),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                  ),
                ),
                new Text(" "),
                new Text(" "),
                new Material(
                  borderRadius: BorderRadius.circular(25.0),
                  elevation: 10.0,
                  child: new Container(
                    width: MediaQuery.of(context).size.width-60.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                      borderRadius: const BorderRadius.all(const Radius.circular(25.0)),
                    ),
                    child: new FlatButton(
                        onPressed: (){
                          //登录

                        },
                      child: new Text("登录",style: new TextStyle(color: Colors.white,fontSize: 20.0),),
                    ),
                  ),
                  color: Color.fromRGBO(200, 62, 26, 0.8),
                ),
                new Text(""),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new FlatButton(
                      onPressed: (){

                      },
                      child: new Text("忘记密码",style: new TextStyle(color: Colors.white,fontSize: 14.0),),
                    ),
                    new FlatButton(
                      onPressed: (){
                        //跳转注册
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                              builder:(context){
                                return RegisterVC();
                              }
                          ),
                        );
                      },
                      child: new Text("注册",style: new TextStyle(color: Colors.white,fontSize: 14.0),),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}