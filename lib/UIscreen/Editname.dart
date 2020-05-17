import 'package:flutter/material.dart';
import 'package:googlefilesclone/UIscreen/Uiscreen.dart';

class Editname extends StatefulWidget {
  @override
  _EditnameState createState() => _EditnameState();
}

class _EditnameState extends State<Editname> {
  
  final namecontroller = new TextEditingController();
  final _formkey = GlobalKey<FormState>();
  String name;
  String setname;
  String firstcharacter ;
  bool buttonenabled = false;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    namecontroller.addListener(() {
      buttonenabled = true;
     });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    namecontroller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
           appBar: AppBar(
             title: Text("Change name"),
             centerTitle: true,
             titleSpacing: 0.0,
           ),
           backgroundColor: Colors.white,
          body: Container(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.lightBlue,
                   //  child: Text('$firstcharacter'),
                ),
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                enabled: true,
                controller: namecontroller,
                cursorColor: Colors.lightBlue,
                textDirection: TextDirection.ltr,
                textCapitalization: TextCapitalization.characters,
                cursorWidth: 1.0,
                decoration: InputDecoration(
                  labelText: "ENTER YOUR NAME HERE",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))
                ),

                onChanged: (value)
                {
                  setState(() {
                    name = value;
                  });
                },
              ),
                SizedBox(height: 20.0,),
              Text("Your name helps friends share with you"),
                SizedBox(height: 20.0,),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {
                    setname = namecontroller.text;
                  });
                   Navigator.pop(context,"$setname");
                   },
                child: Text("SAVE"),
              ),
              ],
          ),
        ),
      ),
    );
  }
}
