import 'dart:async';
import 'package:flutter/material.dart';

import 'onboarding2.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: SplashEx1(),));
}

class SplashEx1 extends StatefulWidget {
  const SplashEx1({Key ? key}):super(key:key);

  @override
  State<SplashEx1> createState() => _SplashState();
}

class _SplashState extends State<SplashEx1> {
  @override
  void initState(){
    Timer(Duration(seconds: 5),() {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder:(context) =>  OnBoarding1()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF795548),
      body: Center(
        child: Container(
            height: 250,
            width: 250,
            child: Image.asset("assets/app/Clue_icon-removebg-preview.png")),
      ),
    );
  }
}
