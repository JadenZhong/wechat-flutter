import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'CountryListVC.dart';
import 'dart:async';
class RegisterView extends StatefulWidget{
  @override
  _RegisterViewState createState() => new _RegisterViewState();
}
class _RegisterViewState extends State{
  String country="中国";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(title: new Text("注册"),),
        body: new Center(
          child: new ListView(
            children: <Widget>[
              new Container(
                width: MediaQuery.of(context).size.height-40.0,
                margin: const EdgeInsets.only(left: 0.0,right: 0.0,top: 0.0,bottom: 0.0),
                height: 55.0,
                child: new RaisedButton(
                    onPressed: (){
                      Future future = Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (context){
                              return new CountryListVC();
                            }
                        ),
                      );
                      future.then((value){
                        if(value!=null){
                          country=value;
                        }else{
                          country="中国";
                        }
                        setState(() {

                        });
                      });
                    },
                    child: new Text(country,style: new TextStyle(color: Colors.grey,fontSize: 16.0),),
                    elevation: 0.0,
                ),
              ),
              new Container(
                height: 55.0,
                child: new TextFormField(
                  decoration: new InputDecoration(
                      labelText: '请输入手机号码：'
                  ),
                ),
              ),
              new Container(
                height: 55.0,
                child: new TextFormField(
                  decoration: new InputDecoration(
                      labelText: '请输入邮箱：'
                  ),
                ),
              ),
              new Container(
                height: 55.0,
                child: new TextFormField(
                  decoration: new InputDecoration(
                      labelText: '请输入密码：'
                  ),
                ),
              ),
              new Container(
                height: 55.0,
                child: new TextFormField(
                  decoration: new InputDecoration(
                      labelText: '请确认密码：'
                  ),
                ),
              ),
              new Container(
                height: 55.0,
                child: new TextFormField(
                  decoration: new InputDecoration(
                      labelText: '请输入安全密码：'
                  ),
                ),
              ),
              new Container(
                height: 55.0,
                child: new TextFormField(
                  decoration: new InputDecoration(
                      labelText: '请确认安全密码：'
                  ),
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.height-40.0,
                margin: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0,bottom: 15.0),
                height: 47.0,
                child: new RaisedButton(onPressed: (){},child: new Text("注册",style: new TextStyle(color: Colors.white,fontSize: 16.0),),color: Colors.blue,elevation: 8.0,),
              ),
              new Container(
                  width: MediaQuery.of(context).size.height-40.0,
                  margin: const EdgeInsets.only(left: 30.0,right: 30.0,bottom: 15.0),
                  height: 47.0,
                  child: new RaisedButton(onPressed: (){},child: new Text("登录",style: new TextStyle(fontSize: 16.0)),color: Colors.white,elevation: 8.0,)
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