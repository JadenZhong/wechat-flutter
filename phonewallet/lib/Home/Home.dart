import 'package:flutter/material.dart';
import 'MineProperty.dart';
import 'HistoryList.dart';
import 'AddressList.dart';
class Home extends StatefulWidget{
  @override
  _HomeState createState() => new _HomeState(); 
}
class _HomeState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("首页"),
        backgroundColor: Colors.black,
        actions: <Widget>[
          new Icon(Icons.crop_free),
        ],
      ),
      body: new Wrap(
        children: <Widget>[
          new Container(
            height: MediaQuery.of(context).size.height*0.30,
            color: Colors.black,
            child: new Column(
              children: <Widget>[
                new Text(" "),
                new Text(" "),
                new Text(" "),
                new Text(" "),
                new Row(
                    children: <Widget>[
                      new Text("..."),
                      new Text("8800.0",style: new TextStyle(color: Colors.white,fontSize: 28.0)),
                      new FlatButton(onPressed: (){}, child: new Text("BTC ",style: new TextStyle(color: Colors.white,fontSize: 28.0))),
                      new Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                    ],
                ),
                new Text(" "),
                new Row(
                  children: <Widget>[
                    new Text("..."),
                    new Text("RMB 1000",style: new TextStyle(color: Colors.white,fontSize: 18.0)),
                    new Text("..."),new Text("..."),new Text("..."),
                    new Text("USD 100.0",style: new TextStyle(color: Colors.white,fontSize: 18.0)),
                  ],
                )
              ],
            ),
          ),
          new Container(
            height: MediaQuery.of(context).size.height*0.70-64.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new Text(""),
                    new GestureDetector(
                      child: new Icon(Icons.monetization_on,size: 50.0,),
                      onTap: (){
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                              builder: (context){
                                return new MineProperty();
                              },
                          ),
                        );
                      },
                    ),
                    new Text("我的资产",style: new TextStyle(fontSize: 17.0),),
                  ],
                ),
                new Column(
                  children: <Widget>[
                    new Text(""),
                    new GestureDetector(
                      child: new Icon(Icons.av_timer,size: 50.0,),
                      onTap: (){
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (context){
                              return new HistoryList();
                            },
                          ),
                        );
                      },
                    ),
                    new Text("交易记录",style: new TextStyle(fontSize: 17.0),),

                  ],
                ),
                new Column(
                  children: <Widget>[
                    new Text(""),
                    new GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (context){
                              return new AddressList();
                            },
                          ),
                        );
                      },
                      child: new Icon(Icons.subdirectory_arrow_right,size: 50.0,),
                    ),
                    new Text("地址簿",style: new TextStyle(fontSize: 17.0),),
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}