import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/ui/settings/verification_screen.dart';
import 'package:origin/ui/start/auth/login_screen.dart';
import 'package:origin/utils/styles.dart';

import '../../../utils/gaps.dart';
import '../../../utils/image_box.dart';
import '../../../widgets/default_button.dart';
import 'custom_text_field.dart';
import 'otp_screen.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                20.height,
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
                    poppinsText(text: "Create a new account", fontSize: 40, color: blackColour, font: mediumLite),
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
                      title("Phone Number"),
                      paddingBetweenWidgets,
                      CustomTextField(isPassword: false,),
                      paddingBetweenWidgets,
                      title("Password"),
                      paddingBetweenWidgets,
                      CustomTextField(isPassword: false,),
                      paddingBetweenWidgets,
                      title("Re-enter Password"),
                      paddingBetweenWidgets,
                      CustomTextField(isPassword: false,),
                      20.height,
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: greenColor,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(Icons.check,color: white,size: 12,),
                            ),
                          ),
                          15.width,
                          poppinsText(text: "I agree to the platform terms and conditions", fontSize: 15, font: FontWeight.normal,maxLines: 2)
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: DefaultButton(fontSize: 24, title: "Create a Wallet",
                         onTap: (){
                          Get.to(OtpScreen());
                         },
                         margin: EdgeInsets.only(top: 20,bottom: 20)),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(LoginAccount());
                        },
                        child: Align(
                            alignment: Alignment.center,
                            child: poppinsText(text: "I already have an account", fontSize: 15, font: mediumLite,color: orangeLite)),
                      ),
                      200.height
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }

   title(String title){
    return poppinsText(text: title, fontSize: 15, color: blackColour, font: FontWeight.normal);
  }
}
