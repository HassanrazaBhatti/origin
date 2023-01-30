


import 'package:flutter/cupertino.dart';

Widget imageBox({required double height,required double width,required String img}){
  return SizedBox(
    height: height,
    width: width,
    child: Image.asset("assets/images/$img.png",fit: BoxFit.fill,),
  );
}