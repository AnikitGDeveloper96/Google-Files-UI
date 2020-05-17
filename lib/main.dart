import 'package:flutter/material.dart';
import 'package:googlefilesclone/UIscreen/Splashscreen.dart';
import 'package:googlefilesclone/UIscreen/Uiscreen.dart';
void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}