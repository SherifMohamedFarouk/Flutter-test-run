import 'dart:math';

import "package:flutter/material.dart";

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(child:Container(
      alignment: Alignment.center,
      color: Colors.amberAccent,
      margin: EdgeInsets.only(left: 200.0),
      child: Text("Flight",textDirection: TextDirection.ltr,style: TextStyle(decoration:TextDecoration.none ),),
    )
    );
  }

}
