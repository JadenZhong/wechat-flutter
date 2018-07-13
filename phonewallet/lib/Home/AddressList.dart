import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class AddressList extends StatefulWidget{
  @override
  _AddressListState createState() => new _AddressListState();

}
class _AddressListState extends State{
  final List<String> tabLists = ["BTC","OFC","LTC","YZR"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("地址列表"),backgroundColor: Colors.black,),
      body: new ListView.builder(
          itemCount: 20,
          itemBuilder: (context,index){
            return new ListTile(
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Text("BTC",style: new TextStyle(color: Colors.black,fontSize: 15.0),),
                      new Text("  (备注信息)",style: new TextStyle(color: Colors.black,fontSize: 15.0),),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new MaterialButton(onPressed: (){},minWidth: 30.0,child: new Text("转账",style: new TextStyle(fontSize: 18.0,color: Colors.red[400]),),),
                      new Text("|"),
                      new MaterialButton(onPressed: (){},minWidth: 30.0,child: new Text("编辑",style: new TextStyle(fontSize: 18.0,color: Colors.red[400]),),),
                    ],
                  ),
                ],
              ),
              subtitle: new Text("JHTGYFERSDYIOLFTDRTDSERD",style: new TextStyle(color: Colors.black,fontSize: 15.0),),
            );
          }
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}
abstract class ListItem{}

class HeadingItem implements ListItem{
  final String heading;

  HeadingItem(this.heading);
}
class MessageItem implements ListItem{
  final String sendor;
  final String body;

  MessageItem(this.sendor,this.body);
}