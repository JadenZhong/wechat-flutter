import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class MineProperty extends StatefulWidget{
  @override
  _MinePropertyState createState() => new _MinePropertyState();

}
class _MinePropertyState extends State{
  final List<ListItem> items = new List<ListItem>.generate(
    1000,
        (i) => i % 6 == 0
        ? new HeadingItem("Heading $i")
        : new MessageItem("Sender $i", "Message body $i"),
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("我的资产"),backgroundColor: Colors.black,),
      body: new ListView.builder(
          itemCount: 20,
          itemBuilder: (context,index){
            final item = items[index];
            return new ListTile(
              title: new Row(
                  children: <Widget>[
                    new Icon(Icons.attach_money),
                    new Text("BTC",style: new TextStyle(fontSize: 18.0),),
                    new Text("100.3",style: new TextStyle(color: Colors.red,fontSize: 18.0),),
                  ],
              ),
              subtitle: new Text("jihcvdsuvdsyuvdslvdsv",style: new TextStyle(color: Colors.black,fontSize: 15.0),),
              trailing: new Text("¥100,000,000",style: new TextStyle(color: Colors.black,fontSize: 18.0),),
            );
          },
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