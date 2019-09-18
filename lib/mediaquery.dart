import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  final String title;
  MediaQueryPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var widget;
    return Scaffold(
      appBar: AppBar(
        title: Text("Mediaquery"),
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share, color: Colors.white,), onPressed: null)
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.purple,
              width: MediaQuery.of(context).size.width/2,
              height: 200,
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.blue,
              width: MediaQuery.of(context).size.width/1.5,
              height: 250,
            )
          ],
        ),
      ),
    );
  }
}
