import 'package:flutter/material.dart';
import 'package:supercart/repository/widgets/uihelper.dart';

class Loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Uihelper.CustomImage(img: "loginbg.png")],
        ),
      ),
    );
  }
}
