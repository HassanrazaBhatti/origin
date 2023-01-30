

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:origin/ui/start/auth/forget_password.dart';
import 'package:origin/utils/styles.dart';

import '../../../utils/gaps.dart';
import '../../../utils/image_box.dart';
import '../../../widgets/default_button.dart';
import 'custom_text_field.dart';

class LoginAccount extends StatelessWidget {
  const LoginAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
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
                poppinsText(text: "Login to your account", fontSize: 40, color: blackColour, font: mediumLite),
                SizedBox(width: 190,)
              ],
            ),
            SizedBox(
              width: width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  title("Name"),
                  paddingBetweenWidgets,
                  CustomTextField(isPassword: false,),
                  paddingBetweenWidgets,
                  title("Email Address"),
                  paddingBetweenWidgets,
                  CustomTextField(isPassword: false,),
                  paddingBetweenWidgets,
                  title("Password"),
                  paddingBetweenWidgets,
                  CustomTextField(isPassword: false,),
                  paddingBetweenWidgets,
                  GestureDetector(
                    onTap: (){
                      Get.to(ForgotPassword());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        poppinsText(text: "Forget password", fontSize: 15, font: mediumLite,color: orangeLite)

                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Align(
                    alignment: Alignment.center,
                    child: DefaultButton(fontSize: 24, title: "Login",
                        margin: EdgeInsets.only(top: 20)),
                  ),
                  SizedBox(height: 30,),
                  Align(
                      alignment: Alignment.center,

                      child: poppinsText(text: "Create a new account", fontSize: 15, font: mediumLite,color: orangeLite))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  title(String title){
    return poppinsText(text: title, fontSize: 15, color: blackColour, font: FontWeight.normal);
  }
}
