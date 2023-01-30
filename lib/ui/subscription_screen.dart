


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/ui/reports_screen.dart';
import 'package:origin/ui/start/auth/custom_text_field.dart';
import 'package:origin/utils/styles.dart';
import 'package:origin/widgets/default_button.dart';

import '../utils/app_bar.dart';
import 'main_drawer.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {

  @override
  Widget build(BuildContext context) {
    Dialog errorDialog = Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        padding: EdgeInsets.only(left: 20),
        height: 480.0,
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            poppinsText(text: "Create invoice", fontSize: 24),
            30.height,
            Row(
              children: [
                poppinsText(text: "Order\nDescription:", fontSize: 20,maxLines: 2,textAlign: TextAlign.start),
                36.width,
                DialogueTextField(),
              ],
            ),
            30.height,
            Row(
              children: [
                poppinsText(text: "Order Id:", fontSize: 20,maxLines: 1,textAlign: TextAlign.start),
                70.width,
                DialogueTextField(),
              ],
            ),
            30.height,
            Row(
              children: [
                poppinsText(text: "Pay currency:", fontSize: 20,maxLines: 2,textAlign: TextAlign.start),
                20.width,
                DialogueTextField(),
              ],
            ),
            30.height,
            Row(
              children: [
                poppinsText(text: "Price:", fontSize: 20,maxLines: 1,textAlign: TextAlign.start),
                100.width,
                DialogueTextField(
                  isPostfix: true,
                ),
              ],
            ),
            DefaultButton(
                height: 50,
                fontSize: 24, title: "Create", margin: EdgeInsets.only(top: 40),onTap: () {
              Get.back();
            })
          ],
        ),
      ),
    );
    return  Scaffold(
      appBar: myAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                title(title: "Subscription"),
                SizedBox(
                    width: 177,
                    child: DefaultButton(fontSize: 24, title: "Add", margin: EdgeInsets.only(bottom: 30))),
              ],
            ),
            20.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                poppinsText(text: "Invoice ID", fontSize: 20),
                poppinsText(text: "Frequency", fontSize: 20),
              ],
            ),
              15.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: CustomTextField(),
                ),
                Expanded(child: Container()),
                Expanded(child: CustomTextField()),
              ],
            ),
            15.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                poppinsText(text: "7d 20d 30d", fontSize: 20),
              ],
            ),
            DefaultButton(
               height: 75,
                fontSize: 24, title: "Create", margin: EdgeInsets.only(bottom: 60,top: 40),onTap: (){
           showDialog(context: context, builder: (BuildContext context) => errorDialog);}
            ),
          ],
        ),
      ),
    );
  }
}


class DialogueTextField extends StatelessWidget {
  bool? isPostfix = false;
  DialogueTextField({super.key,this.isPostfix = false});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height:  50,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: greyColor,
            filled: true,
            hintText: (isPostfix ?? false) ? "" : "Optional",
            suffixIcon: (isPostfix ?? false) ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                poppinsText(text: "USD", fontSize: 16),
              ],
            ) : null
        ),
      ),
    ).cornerRadiusWithClipRRect(10);
  }
}



class SubscriptionWidget extends StatefulWidget {
  const SubscriptionWidget({Key? key}) : super(key: key);

  @override
  State<SubscriptionWidget> createState() => _SubscriptionWidgetState();
}

class _SubscriptionWidgetState extends State<SubscriptionWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: MainDrawer(index: 11,)),
          Expanded(
              flex: 6,
              child: SubscriptionScreen()),
        ],
      ),
    );
  }
}