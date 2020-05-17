import 'package:flutter/material.dart';
import 'package:googlefilesclone/UIscreen/Browse.dart';
import 'package:googlefilesclone/UIscreen/Share.dart';

import 'Clean.dart';

class Bottomnavig extends StatefulWidget {
  @override
  _BottomnavigState createState() => _BottomnavigState();
}

class _BottomnavigState extends State<Bottomnavig> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int selectedindex = 0;
  void increment(index) {
    setState(() {
      selectedindex = index;
    });
  }

  final List<Widget> _children = <Widget>[
    Clean(),
    Browse(),
    Share(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _children.elementAt(selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.clear_all),
            title: new Text("Clean",
                style: TextStyle(color: Colors.blue, fontSize: 10.0)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_open),
            title: new Text("Browse",
                style: TextStyle(color: Colors.blue, fontSize: 10.0)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            title: new Text("Share",
                style: TextStyle(color: Colors.blue, fontSize: 10.0)),
          ),
        ],
        selectedItemColor: Colors.blue,
        onTap: (index) {
          increment(index);
        },
      ),
    );
  }
}

