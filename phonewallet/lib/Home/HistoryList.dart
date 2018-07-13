import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class HistoryList extends StatefulWidget{
  @override
  _HistoryListState createState() => new _HistoryListState();

}
class _HistoryListState extends State{
  final List<String> tabLists = ["BTC","OFC","LTC","YZR"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new DefaultTabController(
      length: tabLists.length,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("交易记录"),
          backgroundColor: Colors.black,
          bottom: new TabBar(
            isScrollable: true,
            tabs: tabLists.map((String str){
              return new Tab(
                text: str,
              );
            }
            ).toList(),
          ),
        ),
        body: new ListView.builder(
            itemCount: 20,
            itemBuilder:(context,index){
              return new ListTile(
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("今天",style: new TextStyle(color: Colors.black,fontSize: 16.0),),
                    new Text("2.02",style: new TextStyle(color: Colors.green,fontSize: 22.0,fontWeight: FontWeight.w500)),
                  ],
                ),
                subtitle: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("02:20",style: new TextStyle(color: Colors.black,fontSize: 14.0),),
                    new Text("银行卡提现",style: new TextStyle(color: Colors.black,fontSize: 14.0),),
                  ],
                ),
              );
            }
        ),
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