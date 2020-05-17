import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:googlefilesclone/UIscreen/Editname.dart';
 class Browse extends StatefulWidget {
   @override
   _BrowseState createState() => _BrowseState();
 }
 
 class _BrowseState extends State<Browse> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
       title:Text(" Files"),
       centerTitle: true,
       actions: <Widget>[
         Icon(Icons.search),
         
         Icon(Icons.more_vert),
       ],
     ),
       drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Editname()));
                },
                child: Text("Edit the name ",style: TextStyle(color: Colors.blue,fontSize: 30.0),),
              ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("\n OB\nSpace\nsaved"),
                       Text( "O\nShared\nrecipients"),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.share) ,
                title:  Text("Share Files app with Friends"),
                onTap: (){},
                ),
                ListTile(
                leading: Icon(Icons.settings) ,
                title:  Text("Settings"),
                onTap: (){},
                ),
                ListTile(
                leading: Icon(Icons.help) ,
                title:  Text("Help and feedback "),
                onTap: (){},
                ),
                SizedBox(height:350),
                Container(
                child: Column(
                  children: <Widget>[
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Privacy Policy"),
                       Text( "Terms of Service"),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        )
      ) ,
     body: Container(
       child: ListView(
         children: <Widget>
         [
           Padding(
             padding: const EdgeInsets.all(18.0),
             child: ListTile(
          leading: Icon(Icons.file_download),
          title: Text("Downloads"),
          onTap: (){},
             ),
           ),
           Divider(),
           SizedBox(height: 15.0,),
           Padding(
             padding: const EdgeInsets.all(18.0),
             child: ListTile(
          leading: Icon(Icons.image),
          title: Text("Images"),
             onTap: (){},
             ),
           ),
           Divider(),
           
           Padding(
             padding: const EdgeInsets.all(18.0),
             child: ListTile(
          leading: Icon(Icons.video_library),
          title: Text("Videos"),
             onTap: (){},
             ),
           ),
           Divider(),

           
           Padding(
             padding: const EdgeInsets.all(18.0),
             child: ListTile(
          leading: Icon(Icons.audiotrack),
          title: Text("Audio"),
             onTap: (){},
             ),
           ),
           Divider(),
           
           Padding(
             padding: const EdgeInsets.all(18.0),
             child: ListTile(
          leading: Icon(Icons.file_download),
          title: Text("Document and other"),
             onTap: (){},
             ),
           ),
           Divider(),
           
           Padding(
             padding: const EdgeInsets.all(18.0),
             child: ListTile(
          leading: Icon(Icons.apps),
          title: Text("Apps"),
             onTap: (){},
             ),
           ),
           Divider(),

            ],
       ),
       
     ),
     );
   }
 }