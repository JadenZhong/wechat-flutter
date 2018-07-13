import 'package:flutter/material.dart';
import 'package:phonewallet/Login/LoginVC.dart';
class Mine extends StatefulWidget{
  @override
  _MineState createState() => new _MineState();
}
class _MineState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            height: MediaQuery.of(context).size.height*1/3,
            color: Colors.black,
            alignment: Alignment.topCenter,
            child: new Wrap(
              direction: Axis.vertical,
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                new Container(
                    margin: new EdgeInsets.only(top: 10.0),
                    child: new Text("个人中心",style: new TextStyle(color: Colors.white,fontSize: 19.0),),
                ),
                new Container(
                  margin: new EdgeInsets.only(top: 60.0),
                  child: new GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (context){
                              return new LoginVC();
                            }
                        ),
                      );
                    },
                    child: new Material(
                      borderRadius: BorderRadius.circular(50.0),
                      elevation: 5.0,
                      child: new Image.asset("images/codeimg.png",width: 50.0,height: 50.0,),
                    ),
                  )
                ),
                new Container(
                  margin: new EdgeInsets.only(top: 15.0),
                  child: new Text("请先登录",style: new TextStyle(color: Colors.white,fontSize: 16.0),),
                ),
              ],
            ),
          ),
          new ListTile(
            leading: new Text("资产设置",style: new TextStyle(fontSize: 17.0),),
            trailing: new Icon(Icons.arrow_forward_ios,size: 18.0,),
          ),
          new Container(
            padding: new EdgeInsets.only(left: 20.0),
            height: 55.0,
            color: Colors.grey[300],
            alignment: Alignment.centerLeft,
            child: new Text("备份",style: new TextStyle(fontSize: 19.0,fontWeight: FontWeight.w500),),
          ),
          new ListTile(
            leading: new Text("钱包备份",style: new TextStyle(fontSize: 17.0),),
            trailing: new Icon(Icons.arrow_forward_ios,size: 18.0,),
          ),
          new Container(
            padding: new EdgeInsets.only(left: 20.0),
            alignment: Alignment.centerLeft,
            height: 55.0,
            color: Colors.grey[300],
            child: new Text("安全",style: new TextStyle(fontSize: 19.0,fontWeight: FontWeight.w500),),
          ),
          new ListTile(
            leading: new Text("实名认证",style: new TextStyle(fontSize: 17.0),),
            trailing: new Icon(Icons.arrow_forward_ios,size: 18.0,),
          ),
          new ListTile(
            leading: new Text("修改密码",style: new TextStyle(fontSize: 17.0),),
            trailing: new Icon(Icons.arrow_forward_ios,size: 18.0,),
          ),
          new ListTile(
            leading: new Text("人脸识别",style: new TextStyle(fontSize: 17.0),),
            trailing: new Icon(Icons.arrow_forward_ios,size: 18.0,),
          ),
          new ListTile(
            leading: new Text("指纹识别",style: new TextStyle(fontSize: 17.0),),
            trailing: new Icon(Icons.arrow_forward_ios,size: 18.0,),
          ),
        ],
      )
    );
  }
}