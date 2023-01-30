


import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Colors

Color blackColour = Colors.black;
Color whiteColour = Colors.white;
Color orangeLite = const Color(0xffCD1382);
Color purpleColor = const Color(0xff854BFE);
Color greyColor = const Color(0xffD9D9D9);

//FontWeight
// Default Text
FontWeight mediumLite = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight boldLite = FontWeight.w600;
FontWeight normal = FontWeight.normal;

Widget poppinsText({required String text,required double fontSize, Color color = Colors.black,FontWeight font = FontWeight.w400,int maxLines = 1,TextAlign? textAlign = TextAlign.center}){
  return AutoSizeText(
  text,
  maxFontSize: fontSize,
  overflow: TextOverflow.ellipsis,
  minFontSize: 6,
  maxLines: maxLines,
  textAlign: textAlign,
  style: GoogleFonts.poppins(
    fontSize: fontSize,
   color: color,
   fontWeight: font,
   height: 1.2,
  ),
  );
}

Widget title({required String title,Color color = Colors.black}){
  return Text(title,style: GoogleFonts.poppins(
    fontSize: 40,
    fontWeight: medium,
    color: color
  ),);
}

Widget subtitle(String title){
  return poppinsText(text: title, fontSize: 32,font: medium);
}