import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:origin/ui/start/on_boarding_second.dart';
import 'package:origin/utils/styles.dart';
import 'package:origin/widgets/default_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/onboard_2.png",width: width * 0.25,height: height*0.25,),
            AutoSizeText(
              "Crypto payments for\n eCommerce",
              maxFontSize: 64,
              maxLines: 2,
              textAlign: TextAlign.center,
              minFontSize: 12,
              style:
                  GoogleFonts.poppins(color: orangeLite, fontWeight: medium,height: 1.2,fontSize: 64),
            ),
            //  poppinsText(text: "", fontSize: 64, color: orangeLite, font: medium),
            poppinsText(
              maxLines: 2,
                text:
                    "Stay in control of your money with a Non custodial\n wallet to wallet payment gateway",
                fontSize: 40,
                color: blackColour,
                font: normal),
              DefaultButton(
                onTap: (){
                  Get.to(OnBoardingSecond());
                },
                fontSize: 24, title: "Get Started",
              margin: EdgeInsets.only(top: 50),
              )
          ],
        ),
      ),
    );
  }
}
