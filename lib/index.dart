import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  final String title;
  IndexPage({Key key, this.title}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  var symbole = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text(widget.title),
       backgroundColor: Colors.orange,
       actions: <Widget>[
         IconButton(icon: Icon(Icons.share, color: Colors.white,), onPressed: null)
       ],
    ),
      body: Center(
        child: Container(
          width: 800,
          height: 800,
          child: IndexedStack(
            index: symbole,
            alignment: Alignment.center,
            children: <Widget>[
              Card(
                color: Colors.red,
                child: Container(
                  height: 400,
                  width: 400,
                ),
              ),
             Text('Miss NaN', style: TextStyle(
               color: Colors.pink,
               fontSize: 50,
             ),),
              Card(
                color: Colors.blue,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'username',
                  ),
                )
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        onTap: (data) {
       setState(() {
         symbole = data;
       });
        },
        backgroundColor: Colors.orange,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.white,), title: Text('ggg')),
            BottomNavigationBarItem(icon: Icon(Icons.map, color: Colors.white,), title: Text('ggg')),
            BottomNavigationBarItem(icon: Icon(Icons.mail, color: Colors.white,), title: Text('ggg')),
          ]
      ),
    );
  }
}
