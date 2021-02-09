import 'dart:math';

import "package:flutter/material.dart";

import 'app_screens/FirstScreen.dart';
import 'app_screens/Home.dart';

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter_app",
      home: Scaffold(
        appBar: AppBar(title: Text("my first app")),
        body: Center(
          child: Home(),
        ),
      ),
    );
  }
}
