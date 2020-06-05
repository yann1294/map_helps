import 'package:flutter/material.dart';
import 'package:maphelps/screens/introscreen/introscreen.dart';

void main()=>runApp(MapHelps());

class MapHelps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}