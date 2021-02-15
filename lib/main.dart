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
          child: getList(),

        ),floatingActionButton: FloatingActionButton(
         onPressed: () => debugPrint("hey"),
        child: Icon(Icons.add),
        tooltip: 'Add another item',
      ),
      ),
    );
  }
}
  void showSnackBar(BuildContext context , String item){
   var snackBar = SnackBar(
     content: Text("You have clicked this item $item"),
     action: SnackBarAction(label: "undo",
       onPressed: (){
       debugPrint('print');
       },
     ),
   );
   Scaffold.of(context).showSnackBar(snackBar);
  }

  List<String> getListView(){
  var items = List<String>.generate(100, (index) => "items $index");
  return items;
  }

Widget getList() {
  var listview = ListView.builder(
      itemBuilder:(context , index){
         return ListTile(
           title: Text(getListView()[index]),
           onTap:() => showSnackBar(context,getListView()[index]),
         );
      }
  );
  return listview;
}


// Widget getList() {
//   var listview = ListView(children: [
//     ListTile(
// leading: Icon(Icons.ac_unit),
//       title: Text("Ac unit"),
//       subtitle: Text(" 12 hourse"),
//       trailing:Icon(Icons.wb_sunny),
//       onTap:() => debugPrint("u clicked"),
//     ),
//     ListTile( leading: Icon(Icons.ac_unit),
//       title: Text("Ac unit"),
//
//     ),
//     Container(color: Colors.amber,child: Text("hey hey"),)
//
//   ],
//   );
//   return listview;
// }
