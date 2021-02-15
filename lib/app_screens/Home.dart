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
            ),
            Text("helloo this a column "),
            Expanded(child: AssetImag()),
            Expanded(child: Button()),
          ],
        ));
  }
}

class AssetImag extends StatelessWidget {
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

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 250.0,
      child: RaisedButton(
        color: Colors.amber,
        child: Text(
          "click me to book a flight",
          style: TextStyle(fontSize: 40.0, color: Colors.white),
        ),
        onPressed: () {BookFLight(context);},
      ),
    );
  }
}

void BookFLight(BuildContext covariant){
  AlertDialog alertDialog = AlertDialog(title:Text( "you have booked your flight"),
    content: Text("have a pleasent flight"),
  );
   showDialog(context: covariant,
     builder: (BuildContext covariant){
     return alertDialog;
     }
   );
}
