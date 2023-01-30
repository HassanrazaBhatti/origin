
import 'package:flutter/material.dart';
import 'package:origin/utils/styles.dart';

import 'on_boarding.dart';
import 'on_boarding_second.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OnBoarding()),
        ));
  }
  @override
  Widget build(BuildContext context) {
        double width = MediaQuery.of(context).size.width;
    return  Container(
      width: double.infinity,
      child: Scaffold(
        backgroundColor: purpleColor,
        body : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                   Image.asset("assets/images/white_logo.png",width: width * 0.25,height: 115,),
                   poppinsText(text: "PAY", fontSize: 96, color: whiteColour,font: boldLite)
            ],
          ),
        )
      ),
    );
  }
}

