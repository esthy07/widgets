import 'package:flutter/material.dart';

class PlaceholderPage extends StatelessWidget {
  final String title;
  PlaceholderPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widget;
    return Scaffold(
      appBar: AppBar(
        title: Text("Placeholder"),
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share, color: Colors.white,), onPressed: null)
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.teal,
              width: 300,
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Placeholder(
                    color: Colors.white,
                    fallbackHeight: 100,
                    fallbackWidth: 100,
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
