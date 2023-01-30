import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/main.dart';
import 'package:origin/ui/reports_screen.dart';
import 'package:origin/utils/image_box.dart';
import 'package:origin/utils/styles.dart';
import '../../../widgets/default_button.dart';
import '../main_drawer.dart';


class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child: imageBox(height: 20, width: 30, img: "back")),
                    title(title: "Kyc verifications"),
                    Container()
                  ],
                ),
              ),
              SizedBox(height: 40,),
              poppinsText(text: "Submit your ID", fontSize: 24, color: blackColour, font: medium,maxLines: 1),
              20.height,
              poppinsText(text: "Upload both front and back of your ID", fontSize: 36, color: Colors.black, font: mediumLite,maxLines: 1),
              SizedBox(height: 40,),
              Stack(
                alignment: Alignment.center,
                children: [
                 imageBox(height: 238, width: 282, img: "elevation"),
                  Column(
                    children: [
                      imageBox(height: 45, width: 55, img: "photo"),
                      SizedBox(height: 40,),
                      poppinsText(text: "Front side", fontSize: 20, color: blackColour, font: mediumLite,maxLines: 1),
                    ],
                  )
                ],
              ),Stack(
                alignment: Alignment.center,
                children: [
                 imageBox(height: 238, width: 282, img: "elevation"),
                  Column(
                    children: [
                      imageBox(height: 45, width: 55, img: "photo"),
                      SizedBox(height: 40,),
                      poppinsText(text: "Back side", fontSize: 20, color: blackColour, font: mediumLite,maxLines: 1),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30,),
              DefaultButton(fontSize: 24, title: myStrings.submit, margin: EdgeInsets.only(top: 30,bottom: 200))
            ],
          ),
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

  Widget walletTextField(double width,int i){
    return Container(
      // height:  50,
      // width: width > 400 ? width * 0.6 : width * 0.80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: Color.fromRGBO(255, 255, 255, 0.74),
          filled: true,
          hintText: "$i.Shark",
          hintStyle: GoogleFonts.poppins(
              fontSize: 16,
              color: blackColour,
              fontWeight: mediumLite
          ),
        ),
      ),
    );
  }

}


class VerificationsWidget extends StatefulWidget {
  const VerificationsWidget({Key? key}) : super(key: key);

  @override
  State<VerificationsWidget> createState() => _VerificationsWidgetState();
}

class _VerificationsWidgetState extends State<VerificationsWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: MainDrawer(index: 7,)),
          Expanded(
              flex: 6,
              child: VerificationScreen()),
        ],
      ),
    );
  }
}