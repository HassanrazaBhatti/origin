


import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:origin/ui/reports_screen.dart';
import 'package:origin/utils/styles.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../utils/image_box.dart';
import '../main_drawer.dart';

class PushNotifications extends StatefulWidget {
  const PushNotifications({Key? key}) : super(key: key);

  @override
  State<PushNotifications> createState() => _PushNotificationsState();
}

class _PushNotificationsState extends State<PushNotifications> {
  bool isSwitchOn = false;
  bool isSwitchOff = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: myAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: imageBox(height: 20, width: 30, img: "back")),
                title(title: "Push Notifications"),
                Container()
              ],
            ),
            20.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Row(
                   children: [
                     poppinsText(text: "In app notification", fontSize: 24,font: mediumLite),
                     50.width,
                     imageBox(width: 40,height: 40,img: "bell")
                   ],
                 ),
                FlutterSwitch(
                  value: isSwitchOn,
                  onToggle: (value) {
                    setState(() {
                      isSwitchOn = value;
                    });
                  },
                ),
              ],
            ),
            30.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Row(
                   children: [
                     poppinsText(text: "Email notification", fontSize: 24,font: mediumLite),
                     50.width,
                     imageBox(width: 60,height: 40,img: "mail")
                   ],
                 ),
                FlutterSwitch(
                  value: isSwitchOff,
                  onToggle: (value) {
                    setState(() {
                      isSwitchOff = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class NotificationSettingsWidget extends StatefulWidget {
  const NotificationSettingsWidget({Key? key}) : super(key: key);

  @override
  State<NotificationSettingsWidget> createState() => _NotificationSettingsWidgetState();
}

class _NotificationSettingsWidgetState extends State<NotificationSettingsWidget> {
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
              child: PushNotifications()),
        ],
      ),
    );
  }
}