import 'dart:math';

import "package:flutter/material.dart";

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.cyanAccent,
      child: Center(
        child: Text(
          luckynumber(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black38, fontSize: 40.0),
        ),
      ),
    );
  }
}

String luckynumber() {
  var random = Random();
  int number = random.nextInt(10);
  return "your lucky number is ${number}";
}
