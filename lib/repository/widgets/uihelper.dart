import 'package:flutter/material.dart';

class Uihelper {
  static customImage({required String img, double? width, double? height}) {
    return Image.asset(
      "assets/images/$img",
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }

  static customText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        fontWeight: fontweight,
        color: color,
      ),
    );
  }
}
