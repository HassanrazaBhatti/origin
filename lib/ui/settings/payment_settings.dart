



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/main.dart';
import 'package:origin/widgets/default_button.dart';

import '../../utils/image_box.dart';
import '../../utils/styles.dart';
import '../main_drawer.dart';

class PaymentSettings extends StatefulWidget {
  const PaymentSettings({Key? key}) : super(key: key);

  @override
  State<PaymentSettings> createState() => _PaymentSettingsState();
}

class _PaymentSettingsState extends State<PaymentSettings> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: imageBox(height: 20, width: 30, img: "back")),
                  title(title: "Payment Settings"),
                  Container()
                ],
              ),
              25.height,
              poppinsText(text: "Default payment settings", fontSize: 32,font: medium),
              20.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  poppinsText(text: "Currency", fontSize: 20,font: mediumLite),
                  poppinsText(text: "Address", fontSize: 20,font: mediumLite),
                  poppinsText(text: "Action", fontSize: 20,font: mediumLite),
                ],
              ),
              25.height,
              divider(width),
              20.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  poppinsText(text: "Bitcoin", fontSize: 20,font: mediumLite),
                  poppinsText(text: "1shuu8987samky6hah", fontSize: 20,font: mediumLite),
                  Icon(Icons.delete_outline,color: purpleColor,)
                ],
              ),
              25.height,
              divider(width),
              DefaultButton(fontSize: 24, title: myStrings.newAddress, margin: EdgeInsets.symmetric(vertical: 50)),
              poppinsText(text: "Api key's", fontSize: 32,font: medium),
              24.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  poppinsText(text: "Key", fontSize: 20,font: mediumLite),
                  poppinsText(text: "Copy", fontSize: 20,font: mediumLite),
                  poppinsText(text: "Status", fontSize: 20,font: mediumLite),
                  poppinsText(text: "Created At", fontSize: 20,font: mediumLite),
                  poppinsText(text: "Action", fontSize: 20,font: mediumLite),
                ],
              ),
              20.height,
              divider(width),
              20.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  poppinsText(text: "1shuu8...", fontSize: 20,font: mediumLite),
                  Icon(Icons.copy,color: purpleColor,),
                  poppinsText(text: "Active", fontSize: 20,font: mediumLite),
                  poppinsText(text: "A02-11-2022 06:43 PM", fontSize: 20,font: mediumLite),
                  Icon(Icons.delete_outline,color: purpleColor,)
                ],
              ),
              20.height,
              divider(width),
              20.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  poppinsText(text: "1shuu8...", fontSize: 20,font: mediumLite),
                  Icon(Icons.copy,color: purpleColor,),
                  poppinsText(text: "Active", fontSize: 20,font: mediumLite),
                  poppinsText(text: "A02-11-2022 06:43 PM", fontSize: 20,font: mediumLite),
                  Icon(Icons.delete_outline,color: purpleColor,)
                ],
              ),
              DefaultButton(fontSize: 24, title: myStrings.newKey, margin: EdgeInsets.symmetric(vertical: 50)),
              Row(
                children: [

                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container divider(double width) {
    return Container(
          width: width,
          height: 1,
          color: blackColour,
        );
  }
}


class PaymentSettingsWidget extends StatefulWidget {
  const PaymentSettingsWidget({Key? key}) : super(key: key);

  @override
  State<PaymentSettingsWidget> createState() => _PaymentSettingsWidgetState();
}

class _PaymentSettingsWidgetState extends State<PaymentSettingsWidget> {
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
              child: PaymentSettings()),
        ],
      ),
    );
  }
}