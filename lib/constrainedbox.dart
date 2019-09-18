import 'package:flutter/material.dart';

class ConstrainedPage extends StatelessWidget {
  final String title;
  ConstrainedPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widget;
    return Scaffold(
      appBar: AppBar(
        title: Text("ContrainedBox"),
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share, color: Colors.white,), onPressed: null)
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Text('Candy', style: TextStyle(fontSize: 30, color: Colors.blue), textAlign: TextAlign.center,),
          ),
          SizedBox(height: 20,),
          Container(
            height: 70,
            width: 10,
            color: Colors.black87,
            child: Text('Crush', style: TextStyle(fontSize: 30, color: Colors.blue), textAlign: TextAlign.center,),
          ),
          ConstrainedBox(constraints: BoxConstraints(
           minHeight: 20,
            minWidth: 40,
            maxWidth: 50,
          ),
            child: Container(
              color: Colors.blue,
              width: 20,
            ),
          ),
          RaisedButton(
            child: Text('Tap Me!'),
              onPressed: () {},
          )
        ],
      ),
    );
  }
}
