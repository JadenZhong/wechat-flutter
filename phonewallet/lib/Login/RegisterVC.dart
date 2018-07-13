import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
class RegisterVC extends StatefulWidget{
  @override
  _RegisterVCState createState() => new _RegisterVCState();
}
class _RegisterVCState extends State{
  final myController = TextEditingController();
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
                        hintText: "手机号码",
                        hintStyle: new TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                      style:new TextStyle(color: Colors.white),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
                new Text(" "),
                new Container(
                  width: MediaQuery.of(context).size.width-60.0,
                  height: 50.0,
                  decoration: new BoxDecoration(
                    border: new Border.all(width: 1.0, color: Colors.white),
                    borderRadius: const BorderRadius.all(const Radius.circular(25.0)),
                  ),
                  child: _buildVerifyCodeEdit(),
                ),
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
                        hintText: "登录密码",
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
                        hintText: "交易密码",
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
                        Navigator.pop(context);
                      },
                      child: new Text("已有账号,立即登录",style: new TextStyle(color: Colors.white,fontSize: 14.0),),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
  Widget _buildVerifyCodeEdit() {
    var node = new FocusNode();
    Widget verifyCodeEdit = new TextField(
      decoration: new InputDecoration(
        hintText: '请输入短信验证码',
        hintStyle: new TextStyle(color: Colors.white),
        border: InputBorder.none,
        labelStyle: new TextStyle(color: Colors.white),
      ),
      keyboardType: TextInputType.number,
      style: new TextStyle(color: Colors.white),
    );

    Widget verifyCodeBtn = new InkWell(
      child: new Container(
        alignment: Alignment.center,
        width: 100.0,
        height: 30.0,
        decoration: new BoxDecoration(
          border: new Border.all(
            width: 1.0,
            color: Colors.white,
          ),
        ),
        child: new Text(
          '发送验证码',
          style: new TextStyle(fontSize: 14.0,color: Colors.white),
        ),
      ),
    );

    return new Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 0.0),
      child: new Stack(
        children: <Widget>[
          verifyCodeEdit,
          new Align(
            alignment: Alignment.centerRight,
            child: verifyCodeBtn,
          ),
        ],
      ),
    );
  }
}