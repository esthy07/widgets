import 'package:flutter/material.dart';

class AnimatedPad extends StatefulWidget {
  final String title;
  AnimatedPad({Key key, this.title}) : super(key: key);

  _AnimatedPadState createState() => _AnimatedPadState();
}

class _AnimatedPadState extends State<AnimatedPad> {
  double paddingVal;

  void initState() {
    super.initState();
    paddingVal = 10.0;
  }

  _changePadding() {
    if (paddingVal == 10.0) {
      setState(() {
        paddingVal = 100.0;
      });
    } else {
      setState(() {
        paddingVal = 10.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share, color: Colors.white,), onPressed: null)
        ],
      ),
      body: Column(
        children: <Widget>[
          AnimatedPadding(
            padding: EdgeInsets.symmetric(
                horizontal: paddingVal, vertical: paddingVal),
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeInOut,
            child: Container(
              height: 200.0,
              color: Colors.teal,
            ),
          ),
          RaisedButton(
            onPressed: _changePadding,
            child: Text('change padding'),
          )
        ],
      ),
    );
  }
}

