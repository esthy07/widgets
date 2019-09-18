import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  final String title;
  StackPage({Key key, this.title}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var widget;
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share, color: Colors.white,), onPressed: null)
        ],
      ),
      body: Center(
        child: Container(
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  width: 300, height: 250, color: Colors.blue,),),
                  Positioned(child: Container(width: 250, height: 200,color: Colors.brown,),),
                  Positioned(child: Container(width: 200, height: 150,color: Colors.yellow,),),
                  Positioned(child: Container(width: 150, height: 100,color: Colors.orange,))
            ],
          ),
        ),
      ),
    );
  }
}
