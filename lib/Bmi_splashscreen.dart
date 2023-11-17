import 'dart:async';

import 'package:flutter/material.dart';

import 'Bmi_screen1.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();

}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 4),
            () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Bmicalculator())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:Container(
        decoration:BoxDecoration(
        image:DecorationImage(image: AssetImage('image/bmi icon.png'),
        ),
        ))
    );
  }
}
