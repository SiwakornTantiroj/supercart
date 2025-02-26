import 'dart:async';

import 'package:flutter/material.dart ';
import 'package:supercart/domain/constants/appcolors.dart';
import 'package:supercart/repository/screens/login/loginscreen.dart';
import 'package:supercart/repository/widgets/uihelper.dart';

class Splashedscreen extends StatefulWidget {
  @override
  State<Splashedscreen> createState() => _SplashedscreenState();
}

class _SplashedscreenState extends State<Splashedscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Loginscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.scaffoldbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Uihelper.customImage(img: "splash.png")],
        ),
      ),
    );
  }
}
