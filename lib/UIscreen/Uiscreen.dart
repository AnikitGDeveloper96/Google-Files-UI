import 'package:flutter/material.dart';
import 'package:googlefilesclone/UIscreen/Bottomnavig.dart';

import 'package:googlefilesclone/UIscreen/Editname.dart';

class Uiscreen extends StatelessWidget {
  String edit =" Edit the name";
  String newname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: GestureDetector(
              onTap: ()  async{
                 final result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Editname()));

              },
              child: Text(
                "$edit} ",
                style: TextStyle(color: Colors.blue, fontSize: 30.0),
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("\n OB\nSpace\nsaved"),
                    Text("O\nShared\nrecipients"),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Share Files app with Friends"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Help and feedback "),
            onTap: () {},
          ),
          SizedBox(height: 350),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Privacy Policy"),
                    Text("Terms of Service"),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
      body: Bottomnavig(),
    );
  }
}
