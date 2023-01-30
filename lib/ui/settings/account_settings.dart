


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/main.dart';
import 'package:origin/ui/reports_screen.dart';
import 'package:origin/ui/start/auth/custom_text_field.dart';
import 'package:origin/utils/image_box.dart';
import 'package:origin/utils/styles.dart';

import '../../utils/app_bar.dart';
import '../../widgets/default_button.dart';
import '../main_drawer.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: whiteColour,
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
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
                  title(title: "Settings"),
                  Container()
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text("Name"),
                ),
              ),
              10.height,
              TextField(
                decoration: InputDecoration(
                  label: Text("Email"),
                ),
              ),
              DefaultButton(title: myStrings.save,fontSize: 24,margin: EdgeInsets.only(top: 40,bottom: 50)),
              subtitle("Update password"),

              TextField(
                decoration: InputDecoration(
                  label: Text("Old password"),
                ),
              ),
              10.height,
              TextField(
                decoration: InputDecoration(
                  label: Text("New password"),
                ),
              ),
              10.height,
              TextField(
                decoration: InputDecoration(
                  label: Text("Confirm password"),
                ),
              ),
              DefaultButton(title: myStrings.save,fontSize: 24,margin: EdgeInsets.only(top: 40,bottom: 50)),
              subtitle("Connect to shopify"),
              10.height,
              fieldLabel("Shopify api Key"),
              10.height,
              CustomTextField(isPassword: false),
              10.height,
              fieldLabel("Shopify Admin API access token"),
              10.height,
              CustomTextField(isPassword: false),
              10.height,
              fieldLabel("Shop domain"),
              10.height,
              CustomTextField(isPassword: false),
              10.height,
              fieldLabel("Shop name"),
              10.height,
              CustomTextField(isPassword: false),
              10.height,
              fieldLabel("Origin api key"),
              10.height,
              CustomTextField(isPassword: false),
              10.height,
              Align(
                alignment: Alignment.center,
                child:  DefaultButton(title: "Connect to shopify",fontSize: 24,margin: EdgeInsets.only(top: 40,bottom: 50)) ,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget fieldLabel(String label){
    return poppinsText(text: label, fontSize: 20,font: mediumLite);
  }
}


class AccountSettingsWidget extends StatefulWidget {
  const AccountSettingsWidget({Key? key}) : super(key: key);

  @override
  State<AccountSettingsWidget> createState() => _AccountSettingsWidgetState();
}

class _AccountSettingsWidgetState extends State<AccountSettingsWidget> {
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
              child: AccountSettings()),
        ],
      ),
    );
  }
}