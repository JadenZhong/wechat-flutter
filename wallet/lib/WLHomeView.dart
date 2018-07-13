import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
class WLHomeView extends StatefulWidget{
  @override
  _WLHomeViewState createState() => new _WLHomeViewState();
}
class _WLHomeViewState extends State{
  String result = "";
  List<String> data = ["1","2","3","4","5"];
  getipAddress() async{
    var url = "https://httpbin.org/ip";
    var httpclient = new HttpClient();
    try{
      var request = await httpclient.getUrl(Uri.parse(url));
      var response = await request.close();
      if(response.statusCode==HttpStatus.OK){
        var json = await response.transform(UTF8.decoder).join();
        var data = JSON.decode(json);
        result = data['origin'];
      }else{
        result = "请求失败_400";
      }
    }catch(exception){
      result = "请求失败_401";
    }
    setState(() {

    });
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Container(
            height: MediaQuery.of(context).size.height*0.4,
            color: Colors.blue,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new FlatButton(onPressed: (){}, child: new Icon(Icons.fullscreen,color: Colors.white,size: 30.0,)),
                  ],
                  mainAxisAlignment: MainAxisAlignment.end,
                ),
                new Container(
                  child: new Text("0.000000TFB",style: new TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.w400),),
                  height: 40.0,
                ),
                new Container(
                  child: new Text("总资产",style: new TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.w200),),
                  height: 40.0,
                ),
                new Container(
                  height: 40.0,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text("hgfyewvewjhidewyfew7213hjbvcsac",style: new TextStyle(color: Colors.white,fontSize: 13.0,fontWeight: FontWeight.w200),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          new Container(
            height: MediaQuery.of(context).size.height*0.6-64.0,
            child: new ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index){
                return new ListTile(
                  title: new Text('${data[index]}'),
                );
              },
            ),
          )

        ],
      )
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getipAddress();
//    print(MediaQuery.of(context).size.height);
  }
}