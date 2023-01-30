import 'package:flutter/material.dart';
import 'package:origin/utils/styles.dart';

import '../../../utils/gaps.dart';
import '../../../utils/image_box.dart';
import '../../../widgets/default_button.dart';
import 'custom_text_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            AppBarWidget(width),
            SizedBox(height: 80,),
            poppinsText(text: "Enter the 6-digit code sent\n to your email address", fontSize: 36, color: blackColour, font: mediumLite,maxLines: 2),
            SizedBox(height: 40,),
            poppinsText(text: "If not see in your inbox, check spam", fontSize: 16, color: blackColour, font: mediumLite),
            SizedBox(height: 30,),
            Container(
              height:  50,
              width: width > 480 ? width * 0.35 : width * 0.80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: greyColor,
                  filled: true,
                ),
              ),
            ),
            DefaultButton(fontSize: 24, title: "Confirm", margin: EdgeInsets.only(top: 30))
          ],
        ),
      ),
    );
  }

  Row AppBarWidget(double width) {

    return width > 480 ?
    Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 80),
                child: SizedBox(
                  height: 52,
                  width: width * 0.1,
                  child: Image.asset("assets/images/color_logo.png",fit: BoxFit.fitWidth,),
                ),
              ),
              poppinsText(text: "Verify your email", fontSize: 40, color: blackColour, font: mediumLite),
              SizedBox(width: 190,)
            ],
          ) : Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        poppinsText(text: "Verify your email", fontSize: 40, color: blackColour, font: mediumLite),
      ],
    );
  }

}
