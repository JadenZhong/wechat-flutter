import 'package:flutter/material.dart';
import 'package:flutter_wechat/XKTabBar.dart';
import 'Home.dart';
import 'ContactView.dart';
import 'FindView.dart';
import 'MineView.dart';
void main() => runApp(new myApp());

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "title",
      theme: new ThemeData(
        primaryColor: Colors.black,
      ),
      home: new Center(
        child: new RandomWords(),
      ),
    );
  }
}
class RandomWords extends StatefulWidget{
  @override
  createState() => new RandomWordsState();
}
class RandomWordsState extends State<RandomWords>{
  final List<BottomNavigationBarItem> listSet = [new BottomNavigationBarItem(icon: new Icon(Icons.chat,color: Colors.grey),title: new Text("微信"),),
  new BottomNavigationBarItem(icon: new Icon(Icons.perm_contact_calendar,color: Colors.grey,),title: new Text("通讯录"),),
  new BottomNavigationBarItem(icon: new Icon(Icons.room,color: Colors.grey),title: new Text("发现"),),
  new BottomNavigationBarItem(icon: new Icon(Icons.perm_identity,color: Colors.grey),title: new Text("我"),),
  ];
  final List<StatefulWidget> vcSet = [new HomeView(),new ContactView(),new FindView(),new MineView()];
  int _sindex=0;
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("微信"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: null),
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(items: listSet,type: BottomNavigationBarType.fixed,
        onTap: (int index){
        setState(() {
            _sindex = index;
        });
          print("____$index");
        },
        currentIndex: _sindex,
      ),
      body: vcSet[_sindex],
    );
  }

}