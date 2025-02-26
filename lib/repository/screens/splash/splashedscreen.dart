import 'package:flutter/material.dart ';
import 'package:supercart/domain/constants/appcolors.dart';
import 'package:supercart/repository/widgets/uihelper.dart';

class Splashedscreen extends StatefulWidget {
  @override
  State<Splashedscreen> createState() => _SplashedscreenState();
}

class _SplashedscreenState extends State<Splashedscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.scaffoldbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Uihelper.CustomImage(img: "splash.png")],
        ),
      ),
    );
  }
}
