import 'package:flutter/material.dart';

class FlexiblePage extends StatelessWidget {
  final String title;
  FlexiblePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var wiget;
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible"),
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share, color: Colors.white,), onPressed: null)
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Container(
                  color: Colors.red,
                )
              ),
              SizedBox(height: 20,),
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    color: Colors.amberAccent,
                  )
              ),
              SizedBox(height: 20,),
              Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Container(
                    color: Colors.teal,
                  )
              )
            ],
          ),
        )
      ),
    );
  }
}
