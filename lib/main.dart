import 'dart:math';

import "package:flutter/material.dart";
import 'package:flutter_app/app_screens/FirstScreen.dart';


void main()=> runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(debugShowCheckedModeBanner:false ,title: "My Flutter app", home:Scaffold(
    appBar: AppBar(title: Text("Flutter test"),
    ),
    body:  FirstScreen()
    ),

    );
  }


}

