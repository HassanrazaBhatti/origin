import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/main.dart';
import 'package:origin/utils/image_box.dart';
import 'package:origin/utils/styles.dart';
import '../../../widgets/default_button.dart';
import '../main_drawer.dart';
import '../reports_screen.dart';


class VerificationSelect extends StatelessWidget {
  const VerificationSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    bool isWeb(){
      if(width > 480){
        return true;
      }
      else{
        return false;
      }
    }
    return  Scaffold(
      appBar: myAppBar(),
      body: SingleChildScrollView(
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
            Container(
              width: width > 600 ? width * 0.50 : width * 0.90,
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  poppinsText(text: "Choose your document type and issuing\ncountry", fontSize: 24, color: blackColour, font: medium,maxLines: 2),
                  SizedBox(height: 40,),
                  Material(
                    color: whiteColour,
                    borderRadius: BorderRadius.circular(10),
                    elevation: 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: width > 480 ? 67 : 50,
                      decoration: BoxDecoration(
                      ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                              poppinsText(text: "SelectID Type", fontSize: 20, color: blackColour, font: mediumLite,maxLines: 1),
                             Icon(Icons.arrow_drop_down_sharp,color: blackColour,size: 33,)
                        ],
                      ) ,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: poppinsText(text: "Select ID Type", fontSize: 20, color: blackColour, font: medium,maxLines: 1)),
                  SizedBox(height: 20,),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: poppinsText(text: "Select a valid government issued document", fontSize: 20, color: blackColour, font: mediumLite,maxLines: 1)),
                  SizedBox(height: 15,),
                  IdType(width,"National Id","id"),
                  SizedBox(height: 15,),
                  IdType(width,"Driver License","license"),
                  SizedBox(height: 15,),
                  IdType(width,"Passport","passport"),
                ],
              ),
            ),
            200.height
          ],
        ),
      ),
    );
  }

  Material IdType(double width,String title,String img,) {
    return Material(
      color: whiteColour,
              borderRadius: BorderRadius.circular(10),
              elevation: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: width > 480 ? 67 : 50,
                decoration: BoxDecoration(
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        imageBox(height: 27, width: 35, img: img),
                        SizedBox(width: 20,),
                        poppinsText(text: title, fontSize: 20, color: blackColour, font: mediumLite,maxLines: 1),
                      ],
                    ),
                    Icon(Icons.arrow_forward,color: blackColour,size: 33,)
                  ],
                ) ,
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


class VerificationsSelectWidget extends StatefulWidget {
  const VerificationsSelectWidget({Key? key}) : super(key: key);

  @override
  State<VerificationsSelectWidget> createState() => _VerificationsSelectWidgetState();
}

class _VerificationsSelectWidgetState extends State<VerificationsSelectWidget> {
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
              child: VerificationSelect()),
        ],
      ),
    );
  }
}