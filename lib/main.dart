import "package:flutter/material.dart";


void main()=> runApp(new MyFlutterApp());

class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(debugShowCheckedModeBanner:false ,title: "My Flutter app", home:Scaffold(
    appBar: AppBar(title: Text("Flutter test"),
    ),
    body: Material(
    color: Colors.lightBlueAccent,
    child: Center(
    child :Text("hello flutter" , textDirection: TextDirection.ltr , style:TextStyle(color: Colors.white,fontSize: 40.0) )
    )
    )
    ),

    );
  }

}