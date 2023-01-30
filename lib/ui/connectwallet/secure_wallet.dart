import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/ui/home/verify_seed_phrase.dart';
import 'package:origin/ui/reports_screen.dart';
import 'package:origin/utils/image_box.dart';
import 'package:origin/utils/styles.dart';

import '../../../widgets/default_button.dart';
import '../main_drawer.dart';
class SecureWallet extends StatelessWidget {
  const SecureWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: myAppBar(),
      body: Center(
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
                    children: [
                      title(title: "Connect your"),
                      title(title: " wallet",color: purpleColor),
                    ],
                  ),
                  Container()
                ],
              ),
              SizedBox(height: 40,),
             // ListTile(title: Text('YOUR TEXT', textAlign: TextAlign.center),
             // leading: Icon(Icons.abc,color: Colors.red,),
             // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  poppinsText(text: "Your ", fontSize: 36, color: blackColour, font: mediumLite,maxLines: 1),
                  poppinsText(text: "wallet ", fontSize: 36, color: purpleColor, font: mediumLite,maxLines: 1),
                  poppinsText(text: "seed phrase", fontSize: 36, color: blackColour, font: mediumLite,maxLines: 1),
                ],
              ),
              SizedBox(height: 40,),
              poppinsText(text: "Write down or copy these words  in the right order to somewhere\n safe. You will be ask to input these words in the next step", fontSize: 20, color: blackColour, font: mediumLite,maxLines: 2),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(216, 217, 207, 0.7)
                ),
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
                    Get.to(VerifySeedPhraseItem());
                  },
                  fontSize: 24, title: "Proceed", margin: EdgeInsets.only(top: 30))
            ],
          ),
        ),
      ),
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

class SecureWalletWidget extends StatefulWidget {
  const SecureWalletWidget({Key? key}) : super(key: key);

  @override
  State<SecureWalletWidget> createState() => _SecureWalletWidgetState();
}

class _SecureWalletWidgetState extends State<SecureWalletWidget> {
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
              child: SecureWallet()),
        ],
      ),
    );
  }
}