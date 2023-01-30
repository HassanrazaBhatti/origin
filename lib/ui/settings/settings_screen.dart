


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/ui/settings/account_settings.dart';
import 'package:origin/ui/settings/payment_settings.dart';
import 'package:origin/ui/settings/push_notifications.dart';
import 'package:origin/ui/settings/verification_select.dart';
import 'package:origin/utils/image_box.dart';
import 'package:origin/utils/styles.dart';

import '../../utils/app_bar.dart';
import '../main_drawer.dart';
import '../reports_screen.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: imageBox(height: 20, width: 30, img: "back")),
                title(title: "Settings"),
                Container()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: Column(
              children: [
                buildItem("Account settings","person",AccountSettingsWidget()),
                40.height,
                buildItem("Payment settings","dollar",PaymentSettingsWidget()),
                40.height,
                buildItem("Push notifications","bell",NotificationSettingsWidget()),
                40.height,
                buildItem("KYC verification","personTick",VerificationsSelectWidget()),
                40.height,
                buildItem("Customer support","headPhone",Container()),
                40.height,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItem(String title,String img,Widget page) {
    return GestureDetector(
      onTap: (){
        Get.to(() => page);
      },
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  imageBox(height: 50, width: 50, img: img),
                  30.width,
                  poppinsText(text: title, fontSize: 36,font: FontWeight.w300)
                ],
              ),
              imageBox(height: 20, width: 30, img: "forward"),
            ],
          ),
    );
  }
}



class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
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
              child: Settings()),
        ],
      ),
    );
  }
}
