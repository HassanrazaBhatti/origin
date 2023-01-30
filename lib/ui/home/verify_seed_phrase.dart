import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/ui/connectwallet/connect_wallet.dart';
import 'package:origin/ui/reports_screen.dart';
import 'package:origin/utils/styles.dart';

import '../../../widgets/default_button.dart';
import '../../utils/image_box.dart';
import '../main_drawer.dart';
class VerifySeedPhrase extends StatelessWidget {
  const VerifySeedPhrase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: myAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                30.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child: imageBox(height: 20, width: 30, img: "back")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        title(title: "Verify your"),
                        title(title: " seed",color: purpleColor),
                        title(title: " phrase"),
                      ],
                    ),
                    Container(width: 60,)
                  ],
                ),

                SizedBox(height: 40,),
                poppinsText(text: "Tap the words to put them next to each other in the\n correct order.", fontSize: 20, color: blackColour, font: mediumLite,maxLines: 2),
                SizedBox(height: 30,),
                Container(
                  height: 200,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xffD9D9D9),
                      width: 1
                    )
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 200,
                  width: 500,
                  child: GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    shrinkWrap: true,
                    childAspectRatio: 1/.4,
                    children: List.generate(12, (index) {
                      return walletTextField(width,index+1);
                    },),
                  ),
                ),
                DefaultButton(
                    onTap: (){
                      Get.to(ConnectWalletWidget());
                    },
                    fontSize: 24, title: "Proceed", margin: EdgeInsets.only(top: 30,bottom: 50))
              ],
            ),
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
        borderRadius: BorderRadius.circular(7),
        color: Color.fromRGBO(216, 217, 207, 0.74),
      ),
      child: Center(child: poppinsText(text: "Shark", fontSize: 16)),
    );
  }

}



class VerifySeedPhraseItem extends StatefulWidget {
  const VerifySeedPhraseItem({Key? key}) : super(key: key);

  @override
  State<VerifySeedPhraseItem> createState() => _VerifySeedPhraseItemState();
}

class _VerifySeedPhraseItemState extends State<VerifySeedPhraseItem> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Row(
          children: [
            Expanded(
                flex: 2,
                child: MainDrawer(index: 1,)),
            Expanded(
                flex: 6,
                child: VerifySeedPhrase()),
          ],
        ));
  }
}