import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/ui/connectwallet/secure_wallet.dart';
import 'package:origin/ui/reports_screen.dart';
import 'package:origin/utils/styles.dart';

import '../../../widgets/default_button.dart';
import '../../utils/image_box.dart';
import '../main_drawer.dart';

class ConnectWallet extends StatefulWidget {
  const ConnectWallet({Key? key}) : super(key: key);

  @override
  State<ConnectWallet> createState() => _ConnectWalletState();
}

class _ConnectWalletState extends State<ConnectWallet> {
  int index = 0;

  update(){
    if(index ==0){
      setState(() {
        index = 1;
      });
    }else{
      setState(() {
        index = 0;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: myAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          30.height,
          title(title: "Connect Wallet"),
          SizedBox(height: 80,),
          poppinsText(text: "Safely store your funds on our platform", fontSize: 36, color: blackColour, font: mediumLite,maxLines: 1),
          SizedBox(height: 40,),
          poppinsText(text: "Understand that you need to keep your seed phrase well secure", fontSize: 20, color: blackColour, font: mediumLite),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: update,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                index == 1 ?   Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle
                  ),
                  child: Center(child: Icon(Icons.check,color: Colors.white,size: 14,),),
                ) :
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle
                  ),
                ),
                poppinsText(text: "  I agree to the platform terms and conditions", fontSize: 15, font: FontWeight.normal,maxLines: 2)
              ],
            ),
          ),
          DefaultButton(fontSize: 24, title: "Proceed", margin: EdgeInsets.only(top: 30),
          onTap: (){
            Get.to(SecureWalletWidget());
          },
          )
        ],
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




class ConnectWalletWidget extends StatefulWidget {
  const ConnectWalletWidget({Key? key}) : super(key: key);

  @override
  State<ConnectWalletWidget> createState() => _ConnectWalletWidgetState();
}

class _ConnectWalletWidgetState extends State<ConnectWalletWidget> {
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
              child: ConnectWallet()),
        ],
      ),
    );
  }
}
