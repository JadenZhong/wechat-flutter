import 'package:flutter/material.dart';
class CountryListVC extends StatefulWidget{
  @override
  _CountryListVCState createState() => new _CountryListVCState();
}
class _CountryListVCState extends State{
  @override
  Widget build(BuildContext context) {
    List<String> countryData = ["中国","阿尔巴尼亚","阿尔及利亚","阿富汗","阿根廷","爱尔兰","埃及","埃塞俄比亚","澳大利亚","中国澳门特别行政区","中国香港特别行政区","新加坡","希腊","西班牙","新西兰"];
    List<String> codeData = ["86","355","213","93","54","353","20","372","61","853","852","65","30","34","64"];
    return new Scaffold(
        appBar: new AppBar(title: new Text("选择国家"),),
        body: new ListView.builder(
            itemBuilder: (BuildContext context,int index){
              return new ListTile(
                  title: new Text(codeData[index]),
                  subtitle: new Text(countryData[index]),
                onTap: (){
                    Navigator.of(context).pop(countryData[index]);
                },
              );
            },
          itemCount: countryData.length,
        ),
    );
  }
  @override
  void initState() {
    super.initState();
  }
}