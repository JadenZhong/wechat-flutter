import 'package:flutter/material.dart';
import 'Login/loginVC.dart';
class WLMineView extends StatefulWidget{
  @override
  _WLMineViewState createState() => new _WLMineViewState();
}
class _WLMineViewState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Container(
            height: MediaQuery.of(context).size.height*0.35,
            color: Colors.blue,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Icon(Icons.credit_card,color: Colors.white,size: 35.0,),
                    new Text("地址列表",style: new TextStyle(color: Colors.white,fontSize: 16.0,),),
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Icon(Icons.track_changes,color: Colors.white,size: 35.0,),
                    new Text("交易记录",style: new TextStyle(color: Colors.white,fontSize: 16.0,),),
                  ],
                )
              ],
            ),
          ),
          new Container(
            height: MediaQuery.of(context).size.height*0.65-64.0,
            child: new ListView(
              children: <Widget>[
                new ListTile(title: new Text("修改登录密码"),leading: new Icon(Icons.donut_small),trailing: new Icon(Icons.arrow_forward_ios,size: 18.0,),),
                new ListTile(title: new Text("修改安全密码"),leading: new Icon(Icons.donut_large),trailing: new Icon(Icons.arrow_forward_ios,size: 18.0,),),
                new ListTile(title: new Text("系统设置"),leading: new Icon(Icons.settings),trailing: new Icon(Icons.arrow_forward_ios,size: 18.0,),onTap: (){
                  Navigator.of(context).push(
                      new MaterialPageRoute(
                          builder: (context){
                            return new LoginView();
                          }
                      ),
                  );
                },),
              ],
            ),
          )
        ],
      ),
    );
  }
}