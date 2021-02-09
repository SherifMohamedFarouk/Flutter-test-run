import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.blue,
        margin: EdgeInsets.all(15.0),
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "the container ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 75.0, color: Colors.amber),
                  ),
                ),
                Expanded(
                  child: Text("rooowwsss"),
                ),
              ],
            ),Text("helloo this a column ")
          ],
        ));
  }
}
