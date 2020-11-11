import 'dart:math';

import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.amberAccent,
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            child: Column(
              children: <Widget>[
                Row(children: [
                  Expanded(
                      child: Text(" jaban",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 35.0))),
                  Expanded(
                      child: Text(
                          " the flight is gonna start soon please take your seat",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20.0))),
                ]),
                Expanded(
                    child: Text(" next flight is in an hour ",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none, fontSize: 20.0))),
                addingImage(),
                addingButton()
              ],
            )));
  }
}

class addingImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/ic_launcher.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      width: 250.0,
      height: 250.0,
    );
  }
}

class addingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.pink,
        child: Text("press this button",
            style: TextStyle(color: Colors.white, fontSize: 20.0)),
        elevation: 6.0,
        onPressed: () {
          alertDialog(context);
        },
      ),
    );
  }
}

void alertDialog(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("this is a dialog"),
    content: Text("You have pressed this button "),
  );

  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}
