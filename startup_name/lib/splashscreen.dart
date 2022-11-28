import 'dart:async';
import 'package:flutter/material.dart';
import 'package:startup_name/Pertemuan_9.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key, required this.title});

  final String title;

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}
class _SplashscreenState extends State<Splashscreen> {
  StartSplashScreen() async{
    var duration = const Duration(seconds:10);
    return Timer (duration, (){
      Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => Pertemuan_9(title: 'Flutter Demo Home Page Pertemuan 9')));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff32efef),
      body: Center(
        child : Image.asset(
          "images/download.png",
          width: 100.0,
          height:100.0,
        ),
      ),
    );
  }
  @override
  void initState(){
    StartSplashScreen();
  }
}