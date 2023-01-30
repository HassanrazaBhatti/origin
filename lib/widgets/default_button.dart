

import 'package:flutter/material.dart';
import 'package:origin/utils/styles.dart';

class DefaultButton extends StatelessWidget {
  double fontSize = 14;
  VoidCallback? onTap;
  String title;
  double? height = 60;
  EdgeInsets margin;
   DefaultButton({super.key,this.fontSize = 14,required this.title,required this.margin,this.onTap,this.height});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        height: height ?? 60,
        width: width > 480 ?  width * 0.25 : width * 0.80,
        decoration: BoxDecoration(
          color: purpleColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: poppinsText(text: title, fontSize: fontSize, color: whiteColour, font: normal)),
      ),
    );
  }
}