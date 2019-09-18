import 'package:flutter/material.dart';

class LimitedBoxPage extends StatelessWidget {
  final String title;
  LimitedBoxPage({Key key, this.title}) : super(key: key);
  //A box that limits its size only when it's unconstrained.

  //If this widget's maximum width is unconstrained then its child's width is limited to maxWidth. Similarly, if
  //this widget's maximum height is unconstrained then its child's height is limited to maxHeight.

  @override
  Widget build(BuildContext context) {
    var widget;
    return Scaffold(
      appBar: AppBar(title: Text("LimitedBox"),
      backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share, color: Colors.white,), onPressed: null)
        ],),
      body: Center(
        child: LimitedBox(
          //here, our container widget has no particular height or width
          child: Container(
            color: Colors.red,
            width: 300,
            height: 450,
          ),
          //we use the maxWidth & maxHeight to limit it
        ),
      ),
    );
  }
}