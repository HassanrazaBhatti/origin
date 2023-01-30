



import 'package:flutter/material.dart';
import 'package:origin/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  bool? isPassword ;
  bool? isPrefix = false;
  String? hint;
   CustomTextField({super.key, this.isPassword,this.hint,this.isPrefix = false});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height:  50,
      width: width > 400 ? width * 0.6 : width * 0.80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
         decoration: InputDecoration(
           border: InputBorder.none,
           fillColor: greyColor,
           filled: true,
           prefixIcon: (isPrefix ?? false) ? Icon(Icons.search) : null,
           hintText: hint,
           suffix: (isPassword ?? false) ? Icon(Icons.visibility) : null
         ),
      ),
    );
  }
}