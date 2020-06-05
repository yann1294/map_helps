import 'dart:io';

import 'package:flutter/material.dart';
import 'package:maphelps/model/slide_tile.dart';
import 'package:maphelps/model/slider_model.dart';
import 'package:maphelps/screens/introscreen/welcomescreen.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  List<SliderModel> slides = new List<SliderModel>();
  int slideIndex = 0;
  PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.blueAccent : Colors.blueGrey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    slides = getSlidesList();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color(0xff3C8CE7), const Color(0xff00EAFF)
        ])
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height - 100,
          child: PageView(
            controller: controller,
            onPageChanged: (index){
              setState(() {
                slideIndex = index;
              });
            },
            children: <Widget>[
              SlideTile(
                imagePath: slides[0].getImageAssetPath(),
                title: slides[0].getTitle(),
                desc: slides[0].getDescription(),
              ),
              SlideTile(
                imagePath: slides[1].getImageAssetPath(),
                title: slides[1].getTitle(),
                desc: slides[1].getDescription(),
              ),
              SlideTile(
                imagePath: slides[2].getImageAssetPath(),
                title: slides[2].getTitle(),
                desc: slides[2].getDescription(),
              ),
              SlideTile(
                imagePath: slides[3].getImageAssetPath(),
                title: slides[3].getTitle(),
                desc: slides[3].getDescription(),
              ),
            ],
          ),
        ),
        bottomSheet: slideIndex != 3 ? bottomsheetWidget() : InkWell(
          onTap: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (_) => WelcomeScreen())
            );
          },
          child: Container(
            height: Platform.isIOS ? 70 : 60,
            color: Colors.blueAccent,
            alignment: Alignment.center,
            child: Text(
              "GET STARTED NOW",
              style: TextStyle(
                color:  Colors.white,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
        ),
      ),
    );
  }
  
  
  Widget bottomsheetWidget(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
              onPressed: (){
                controller.animateToPage(2, duration: Duration(milliseconds: 400), curve: Curves.linear);
              }, 
              splashColor: Colors.blue,
              child: Text(
                "SKIP",
                style: TextStyle(color: Color(0xFF0074E4), fontWeight: FontWeight.w600),
              ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                for (int i = 0; i < 4 ; i++) i == slideIndex ? _buildPageIndicator(true): _buildPageIndicator(false),
              ],
            ),
          ),
          FlatButton(
              onPressed: (){
                print("This is slideindex:  $slideIndex");
                controller.animateToPage(slideIndex + 1, duration: Duration(milliseconds: 300), curve: Curves.linear);
              }, 
              splashColor: Colors.blue,
              child: Text(
                "NEXT",
                style: TextStyle(
                  color: Color(0xFF0074E4),
                    fontWeight: FontWeight.w600
                ),
              )
          )
        ],
      ),
    );
  }
}
