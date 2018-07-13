import 'package:flutter/material.dart';
import 'Home/Home.dart';
import 'Mine/Mine.dart';
import 'Gather/Gather.dart';
import 'Pay/Pay.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<BottomNavigationBarItem> Navdata = [
    new BottomNavigationBarItem(icon: new Icon(Icons.home,),title: new Text("首页"),),
    new BottomNavigationBarItem(icon: new Icon(Icons.get_app,),title: new Text("收款"),),
    new BottomNavigationBarItem(icon: new Icon(Icons.payment,),title: new Text("付款"),),
  new BottomNavigationBarItem(icon: new Icon(Icons.person,),title: new Text("我的"),),];
  int _index=0;
  List<StatefulWidget> vcSet = [new Home(),new Gather(),new Pay(),new Mine()];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
          items:Navdata,
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
            setState(() {
              _index = index;
            });
        },
      ),
      body: vcSet[_index],
    );
  }
}
