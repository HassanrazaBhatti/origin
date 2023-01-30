



import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/ui/history_screen.dart';
import 'package:origin/ui/home/dashboard_screen.dart';
import 'package:origin/ui/payment_link.dart';
import 'package:origin/ui/referral_screen.dart';
import 'package:origin/ui/reports_screen.dart';
import 'package:origin/ui/settings/settings_screen.dart';
import 'package:origin/ui/subscription_screen.dart';
import 'package:origin/utils/image_box.dart';
import 'package:origin/utils/styles.dart';

import 'connectwallet/connect_wallet.dart';
import 'donation_screen.dart';

class MainDrawer extends StatefulWidget {
  int index;
   MainDrawer({Key? key,required this.index}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  int i = 0;
  bool offStage = true;

  update(){
    if(offStage == false){
      setState(() {
        offStage = true;
      });
    }else{
      setState(() {
        offStage = false;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Container(
        width: width * 0.3,
        height: height * 1.3,
        color: greyColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:
                Column(
                  children: [
                    25.height,
                    imageBox(height: 30, width: 250, img: "color_logo"),
                    25.height,
                    GestureDetector(
                      onTap: (){
                        Get.to(DashboardScreen());
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/images/dashboard.svg",height: 25,width: 25,color:widget.index == 0 ? orangeLite : blackColour),
                          25.width,
                          poppinsText(text: "Dashboard", fontSize: 24,font: medium,color: widget.index == 0 ? orangeLite : blackColour)
                        ],
                      ),
                    ),
                    25.height,
                    GestureDetector(
                      onTap: (){
                        Get.to(ConnectWalletWidget());
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/images/Vector.svg",height: 25,width: 25,color: widget.index == 1 ? orangeLite : blackColour),
                          25.width,
                          poppinsText(text: "Connect wallet", fontSize: 24,font: medium,color: widget.index == 1 ? orangeLite : blackColour)
                        ],
                      ),
                    ),
                    25.height,
                    GestureDetector(
                        onTap: (){
                          Get.to(HistoryWidget());
                        },
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/images/transa.svg",height: 25,width: 25,color: widget.index == 2 ? orangeLite : blackColour),
                          25.width,
                          poppinsText(text: "Transaction history", fontSize: 24,font: medium,color: widget.index == 2 ? orangeLite : blackColour)
                        ],
                      ),
                    ),
                    25.height,
                    GestureDetector(
                      onTap: (){
                        update();
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/images/tools.svg",height: 25,width: 25,color: !offStage ? orangeLite : blackColour),
                          25.width,
                          Row(
                            children: [
                              poppinsText(text: "Payment tools", fontSize: 24,font: medium,color: !offStage ? orangeLite : blackColour),
                              Icon(Icons.arrow_drop_down_sharp,color: Colors.black,size: 25,)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Offstage(
                        offstage: offStage,
                        child: GestureDetector(
                          onTap: (){
                            Get.to(PymentWidget());
                          },
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: poppinsText(text: "Payment link", fontSize: 24,color: widget.index == 20 ? orangeLite : blackColour)),
                        )),
                    Offstage(
                      offstage: offStage,
                      child: SizedBox(
                        height: 20,
                      ),
                    ),
                    Offstage(
                        offstage: offStage,
                        child: GestureDetector(
                          onTap: (){
                            Get.to(DonationWidget());
                          },
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: poppinsText(text: "Donation", fontSize: 24,color: widget.index == 10 ? orangeLite : blackColour)),
                        )),
                    Offstage(
                      offstage: offStage,
                      child: SizedBox(
                        height: 25,
                      ),
                    ),
                    Offstage(
                        offstage: offStage,
                        child: GestureDetector(
                          onTap: (){
                            Get.to(SubscriptionWidget());
                          },
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: poppinsText(text: "Subscription", fontSize: 24,color: widget.index == 11 ? orangeLite : blackColour)),
                        )),
                    Offstage(
                      offstage: offStage,
                      child: SizedBox(
                        height: 20,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                       Get.to(ReportsWidget());
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/images/reports.svg",height: 25,width: 25,color: widget.index == 4 ? orangeLite : blackColour),
                          25.width,
                          poppinsText(text: "Reports", fontSize: 24,font: medium,color: widget.index == 4 ? orangeLite : blackColour)
                        ],
                      ),
                    ),
                    25.height,
                    GestureDetector(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/images/integrations.svg",height: 25,width: 25,color: widget.index == 5 ? orangeLite : blackColour),
                          25.width,
                          poppinsText(text: "Integrations", fontSize: 24,font: medium,color: widget.index == 5 ? orangeLite : blackColour)
                        ],
                      ),
                    ),
                    25.height,
                    GestureDetector(
                      onTap: (){
                        Get.to(() => ReferralWidget());
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/images/referral.svg",height: 25,width: 25,color: widget.index == 6 ? orangeLite : blackColour),
                          25.width,
                          poppinsText(text: "Refferral program", fontSize: 24,font: medium,color: widget.index == 6 ? orangeLite : blackColour)
                        ],
                      ),
                    ),
                    25.height,
                    GestureDetector(
                      onTap: (){
                        Get.to(() => SettingsWidget());
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/images/settings.svg",height: 25,width: 25,color: widget.index == 7 ? orangeLite : blackColour),
                          25.width,
                          poppinsText(text: "Settings", fontSize: 24,font: medium,color: widget.index == 7 ? orangeLite : blackColour)
                        ],
                      ),
                    ),
                    25.height,
                    GestureDetector(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/images/logout.svg",height: 25,width: 25,color: widget.index == 8 ? orangeLite : blackColour),
                          25.width,
                          poppinsText(text: "Log out", fontSize: 24,font: medium,color: widget.index == 8 ? orangeLite : blackColour)
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
