import 'package:flutter/material.dart';
import 'dart:async';

import 'package:googlefilesclone/UIscreen/Uiscreen.dart';
class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 30),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> Uiscreen()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
         child: RichText(
           textAlign: TextAlign.center,
           text: TextSpan(
             text: "Google Files UI Clone \n",
             style:TextStyle(color: Colors.blueAccent,fontSize: 40.0),
             children: <TextSpan>[
               TextSpan(text:"@AnikitGrover", style:TextStyle(color: Colors.blueAccent,fontSize:35.0)),
             ]
           ),
         )
         ),
    );
  }
}