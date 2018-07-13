import 'package:flutter/material.dart';
import 'WLHomeView.dart';
import 'WLMineView.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  final List<StatefulWidget> vcSet = [new WLHomeView(),new WLMineView()];
  int _sindex=0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
          items: [new BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text("首页"),),
          new BottomNavigationBarItem(icon: new Icon(Icons.person), title: new Text("我的")),],
        onTap: (int index){
            setState(() {
              _sindex = index;
            });
        },
        currentIndex: _sindex,
      ),
      body: vcSet[_sindex],
    );
  }
}
