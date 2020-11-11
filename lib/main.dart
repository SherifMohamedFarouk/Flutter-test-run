

import "package:flutter/material.dart";

import 'app_screens/FirstScreen.dart';



void main (){
  runApp(MaterialApp( debugShowCheckedModeBanner: false, title: "Flutter app", home: Scaffold(
      body: getListView2(),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          debugPrint("floating bar");
        },
        child: Icon(Icons.add),
        tooltip: "One more item",
      ),

  ),


  ));
}

Widget getListView(){
  var listView = ListView(
    children: [
      ListTile(
        leading:Icon(Icons.landscape),
        title: Text("this is a view "),
        subtitle: Text("nubmer one "),
        trailing: Icon(Icons.wb_sunny),
        onTap: (){
          debugPrint("hey hey");
        },

      )
    ],
  );
  return listView;

}
void showSnackBar(BuildContext context , String item){
  var snackBar = SnackBar(content: Text("You pressed item $item"),
    action: SnackBarAction(
      label: "undo",
      onPressed: (){
        debugPrint("undo the button");
      },
    ),
  );
  Scaffold.of(context).showSnackBar(snackBar);

}

List<String> getlistString(){
  var items = List<String>.generate(1000, (index) => "Item $index");
  return items;

}

Widget getListView2(){
  var listItem = getlistString();
  var listView = ListView.builder(itemBuilder: (context ,index){

       return ListTile(
         leading: Icon(Icons.access_time),
         title: Text(listItem[index]),
         onTap: (){
            showSnackBar(context, listItem[index]);
         },
       );
  }
  );
  return listView;
}
