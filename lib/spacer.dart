import 'package:flutter/material.dart';

class SpacerPage extends StatelessWidget {
  final String title;
  SpacerPage({Key key, this.title}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var widget;
    return Scaffold(
      appBar: AppBar(
        title: Text("Spcer"),
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share, color: Colors.white,), onPressed: null)
        ],
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
            Spacer(
              flex: 2,
            ),
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
            Spacer(
              flex: 5,
            ),
            Container(
              color: Colors.amberAccent,
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
