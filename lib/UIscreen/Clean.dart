import 'package:flutter/material.dart';
import 'package:googlefilesclone/UIscreen/Editname.dart';

class Clean extends StatefulWidget {
  @override
  _CleanState createState() => _CleanState();
}

class _CleanState extends State<Clean> {
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
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Junk Files "),
            subtitle:
                Text("Files unnecessary taking lot of \n space on your phone"),
            trailing: Icon(Icons.more_vert),
            contentPadding: EdgeInsets.all(55.0),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Confirm and free junk file '),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text(
                                'Junk files are left forever and cant be retreived'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Approve'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  });
            },
          ),
          ListTile(
            title: Text("Duplicate Files "),
            subtitle:
                Text("Files unnecessary taking lot of \n space on your phone"),
            trailing: Icon(Icons.more_vert),
            contentPadding: EdgeInsets.all(55.0),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Confirm and delete file '),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text(
                                'DUPLCATE files are left forever and cant be retreived'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Approve'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  });
            },
          ),
          ListTile(
            title: Text("Media Files "),
            subtitle:
                Text("Files unnecessary taking lot of \n space on your phone"),
            trailing: Icon(Icons.more_vert),
            contentPadding: EdgeInsets.all(55.0),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Confirm and free media file '),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text(
                                'Media files are left forever and cant be retreived'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Approve'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  });
            },
          ),
          ListTile(
            title: Text("Video Files "),
            subtitle:
                Text("Files unnecessary taking lot of \n space on your phone"),
            trailing: Icon(Icons.more_vert),
            contentPadding: EdgeInsets.all(55.0),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Confirm and free vide file '),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text(
                                'Videos files are left forever and cant be retreived'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Approve'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  });
            },
          ),
          ListTile(
            title: Text("Large Media Files "),
            subtitle:
                Text("Files unnecessary taking lot of \n space on your phone"),
            trailing: Icon(Icons.more_vert),
            contentPadding: EdgeInsets.all(55.0),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Confirm and free Large Media file '),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text(
                                'Large Media files are left forever and cant be retreived'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Approve'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  });
            },
          ),
          ListTile(
            title: Text("Free up space Files "),
            subtitle:
                Text("Files unnecessary taking lot of \n space on your phone"),
            trailing: Icon(Icons.more_vert),
            contentPadding: EdgeInsets.all(55.0),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Confirm and free Free up space file '),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text(
                                'Free up space files are left forever and cant be retreived'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Approve'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  });
            },
          ),

        ],
      ),
    );
  }
}
