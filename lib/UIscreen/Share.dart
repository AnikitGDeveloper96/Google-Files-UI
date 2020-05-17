import 'package:flutter/material.dart';
import 'package:googlefilesclone/UIscreen/Editname.dart';

class Share extends StatefulWidget {
  @override
  _ShareState createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Files"),
          centerTitle: true,
        ),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Editname()));
                },
                child: Text(
                  "Edit the name ",
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
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Send files from Friends"),
                              content: Text(
                                  "To set up a fast hotspot ,permission to \n access your locations is needed"),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text("Deny"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                FlatButton(
                                  child: Text("Allow"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    child: Text(
                      "Send",
                    ),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Receive files from Friends"),
                              content: Text(
                                  "To set up a fast hotspot ,permission to \n access your locations is needed"),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text("Deny"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                FlatButton(
                                  child: Text("Allow"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    child: Text("Recieve"),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
