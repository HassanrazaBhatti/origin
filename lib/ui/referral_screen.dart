

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/ui/reports_screen.dart';

import '../utils/image_box.dart';
import '../utils/styles.dart';
import '../widgets/default_button.dart';
import 'main_drawer.dart';

class ReferralScreen extends StatefulWidget {
  const ReferralScreen({Key? key}) : super(key: key);

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  title(title: "Kyc verifications"),
                  Container()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                                colors: [
                                  const Color(0xFF854BFE),
                                  const Color(0xFFCD1382),
                                ],
                                begin: const FractionalOffset(0.0, 0.0),
                                end: const FractionalOffset(1.0, 0.0),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                poppinsText(text: "Total number of \nreferrals", fontSize: 20, font: FontWeight.w600,color: Colors.white,maxLines: 2),
                                poppinsText(text: "0", fontSize: 64, font: FontWeight.w600,color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      Expanded(child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                                colors: [
                                  const Color(0xFF854BFE),
                                  const Color(0xFFCD1382),
                                ],
                                begin: const FractionalOffset(0.0, 0.0),
                                end: const FractionalOffset(1.0, 0.0),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                poppinsText(text: "Total number of \nreferrals", fontSize: 20, font: FontWeight.w600,color: Colors.white,maxLines: 2),
                                poppinsText(text: "0", fontSize: 64, font: FontWeight.w600,color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(child: Container()),
                      Expanded(
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                                colors: [
                                  const Color(0xFF854BFE),
                                  const Color(0xFFCD1382),
                                ],
                                begin: const FractionalOffset(0.0, 0.0),
                                end: const FractionalOffset(1.0, 0.0),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                poppinsText(text: "Total number of \nreferrals", fontSize: 20, font: FontWeight.w600,color: Colors.white,maxLines: 2),
                                poppinsText(text: "0", fontSize: 64, font: FontWeight.w600,color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  DefaultButton(
                    title: "Create a new payment link",
                    fontSize: 24,
                    margin: EdgeInsets.only(top: 30,bottom: 30),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                    color: greyColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       poppinsText(text: "Use this link to invite more users and earn\ncash rewards", fontSize: 20,maxLines: 2,textAlign: TextAlign.start),
                        40.height,
                        Container(
                          color: Color.fromRGBO(130, 141, 148, 0.86),
                          height: 50,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              poppinsText(text: "   Lorem ispum hdjkshdj hdslduh hslduui", fontSize: 14,textAlign: TextAlign.start,color: Colors.white),
                            ],
                          ),
                        ).cornerRadiusWithClipRRect(10),
                        30.height,
                        Align(
                          alignment: Alignment.center,
                          child: DefaultButton(
                            title: "Create a new payment link",
                            fontSize: 24,
                            margin: EdgeInsets.only(top: 30),
                          ),
                        ),
                      ],
                    ),
                  ).cornerRadiusWithClipRRect(10),
                  30.height,
                  poppinsText(text: "My referrals", fontSize: 24,font: FontWeight.w600),
                  20.height,
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: greyColor
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height : 60,
                          child: Row(
                            children: [
                              Expanded(child: poppinsText(text: "ID", fontSize: 20)),
                              Expanded(child: poppinsText(text: "Referral Emain", fontSize: 20)),
                              Expanded(child: poppinsText(text: "Transaction", fontSize: 20)),
                            ],
                          ),
                        ),
                        Divider(
                          height: 2,
                          color: Colors.white,
                        ),
                        130.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            poppinsText(text: "You have no referral yet. It takes a couple of clicks\n to have one!", fontSize: 20,maxLines: 2),
                          ],
                        )
                      ],
                    ),
                  ),
                  100.height
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ReferralWidget extends StatefulWidget {
  const ReferralWidget({Key? key}) : super(key: key);

  @override
  State<ReferralWidget> createState() => _ReferralWidgetState();
}

class _ReferralWidgetState extends State<ReferralWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: MainDrawer(index: 6,)),
          Expanded(
              flex: 6,
              child: ReferralScreen()),
        ],
      ),
    );
  }
}