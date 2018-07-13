import 'package:flutter/material.dart';

class Pay extends StatefulWidget{
  @override
  _PayState createState() => new _PayState();
}
class _PayState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Wrap(
        children: <Widget>[
          new Container(
            height: 64.0,
            color: Colors.black,
          ),
          new Container(
            alignment: Alignment.centerLeft,
            height: 55.0,
            color: Colors.grey[300],
            padding: new EdgeInsets.only(left: 15.0),
            child: new Text("发送至",style: new TextStyle(fontSize: 16.0),),
          ),
          new Container(
            height: 55.0,
            alignment: Alignment.centerRight,
            padding: new EdgeInsets.only(right: 25.0),
            child: new Icon(Icons.credit_card),
          ),
          new Container(
            alignment: Alignment.centerLeft,
            height: 55.0,
            color: Colors.grey[300],
            padding: new EdgeInsets.only(left: 15.0),
            child: new Text("发送金额",style: new TextStyle(fontSize: 16.0),),
          ),
          new Container(
            height: 55.0,
            width: MediaQuery.of(context).size.width,
            padding: new EdgeInsets.only(right: 25.0),
            child: new Row(
              children: <Widget>[
                new Container(
                  width: 80.0,
                  child: new FlatButton(
                    onPressed: (){},
                    child: new Text("BTC"),
                  ),
                ),
                new Container(
                  width: 80.0,
                  child: new Text("发送金额",style: new TextStyle(fontSize: 16.0),),
                ),
                new Container(
                  alignment: Alignment.centerRight,
                  width: MediaQuery.of(context).size.width-160.0-25.0,
                  child: new TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '¥0.00'
                    ),
                  ),
                )
              ],
            ),
          ),
          new Container(
            alignment: Alignment.centerLeft,
            height: 55.0,
            color: Colors.grey[300],
            padding: new EdgeInsets.only(left: 15.0),
            child: new Text("本次最多发送金额:1.02BTC",style: new TextStyle(fontSize: 16.0),),
          ),
          new Container(
            alignment: Alignment.centerLeft,
            height: 55.0,
            color: Colors.grey[300],
            padding: new EdgeInsets.only(left: 15.0),
            child: new Text("备注",style: new TextStyle(fontSize: 16.0),),
          ),
          new Container(
            alignment: Alignment.centerLeft,
            height: 55.0,
            padding: new EdgeInsets.only(right: 15.0),
            child: new TextField(
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '请输入备注'
              ),
            ),
          ),
          new Container(
            alignment: Alignment.center,
            height: 55.0,
            margin: new EdgeInsets.only(top: 30.0),
            child: new MaterialButton(onPressed: (){},child: new Text("确认付款",style: new TextStyle(color: Colors.white,fontSize: 18.0),),color: Colors.red[400],height: 55.0,minWidth: MediaQuery.of(context).size.width-50.0,),
          ),
        ],
      ),
    );
  }
}