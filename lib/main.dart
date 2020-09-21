import "package:flutter/material.dart";


void main(){

  runApp(
      new MaterialApp(title: "My Flutter app", home:Scaffold(
        appBar: AppBar(title: Text("Flutter test"),
        ),
        body: Material(
            color: Colors.lightBlueAccent,
            child: Center(
                child :Text("hello flutter" , textDirection: TextDirection.ltr , style:TextStyle(color: Colors.white,fontSize: 40.0) )
            )
        )
      ),

      )


  );

}