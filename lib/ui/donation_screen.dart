import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/ui/reports_screen.dart';
import 'package:origin/ui/start/auth/custom_text_field.dart';
import 'package:origin/widgets/default_button.dart';
import '../utils/styles.dart';
import 'main_drawer.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({Key? key}) : super(key: key);

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  bool isSwitchOn = false;
  bool nameShow = false;
  bool nameRequire = false;
  bool phoneShow = false;
  bool phoneRequire = false;
  bool emailShow = false;
  bool emailRequire = false;
  bool addressShow = false;
  bool addressRequire = false;
  bool socialShow = false;
  bool socialRequire = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.height,
              Align(
                  alignment: Alignment.center,
                  child: title(title: "Donation")),
              30.height,
              poppinsText(text: "Create your donation link", fontSize: 20),
              20.height,
              Row(
                children: [
                  poppinsText(text: "origin/donate", fontSize: 20),
                  20.width,
                  Container(
                    height: 50,
                    width: 200,
                    child: CustomTextField(
                      hint: "Example",
                    ),
                  ).cornerRadiusWithClipRRect(10),
                ],
              ),
              20.height,
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: greyColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: poppinsText(
                                text: "Field",
                                fontSize: 20,
                                textAlign: TextAlign.start),
                          ),
                          Expanded(
                            child: poppinsText(
                                text: "Show",
                                fontSize: 20,
                                textAlign: TextAlign.center),
                          ),
                          Expanded(
                            child: poppinsText(
                                text: "Require",
                                fontSize: 20,
                                textAlign: TextAlign.end),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: whiteColour,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              poppinsText(
                                  text: "Email",
                                  fontSize: 20,
                                  textAlign: TextAlign.start),
                              FlutterSwitch(
                                padding: 0,
                                height: 28,
                                width: 58,
                                activeToggleColor: purpleColor,
                                inactiveToggleColor: grey,
                                activeColor: Colors.white,
                                inactiveColor: Colors.white,
                                toggleSize: 27,
                                value: emailShow,
                                onToggle: (v) {
                                  setState(() {
                                    emailShow = v;
                                  });
                                },
                              )
                            ],
                          ),
                          FlutterSwitch(
                            padding: 0,
                            height: 28,
                            width: 58,
                            activeToggleColor: purpleColor,
                            inactiveToggleColor: grey,
                            activeColor: Colors.white,
                            inactiveColor: Colors.white,
                            toggleSize: 27,
                            value: emailRequire,
                            onToggle: (v) {
                              setState(() {
                                emailRequire = v;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: whiteColour,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              poppinsText(
                                  text: "Phone Number",
                                  fontSize: 20,
                                  textAlign: TextAlign.start),
                              FlutterSwitch(
                                padding: 0,
                                height: 28,
                                width: 58,
                                activeToggleColor: purpleColor,
                                inactiveToggleColor: grey,
                                activeColor: Colors.white,
                                inactiveColor: Colors.white,
                                toggleSize: 27,
                                value: phoneShow,
                                onToggle: (v) {
                                  setState(() {
                                    phoneShow = v;
                                  });
                                },
                              )
                            ],
                          ),
                          FlutterSwitch(
                            padding: 0,
                            height: 28,
                            width: 58,
                            activeToggleColor: purpleColor,
                            inactiveToggleColor: grey,
                            activeColor: Colors.white,
                            inactiveColor: Colors.white,
                            toggleSize: 27,
                            value: phoneRequire,
                            onToggle: (v) {
                              setState(() {
                                phoneRequire = v;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: whiteColour,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              poppinsText(
                                  text: "Name",
                                  fontSize: 20,
                                  textAlign: TextAlign.start),
                              FlutterSwitch(
                                padding: 0,
                                height: 28,
                                width: 58,
                                activeToggleColor: purpleColor,
                                inactiveToggleColor: grey,
                                activeColor: Colors.white,
                                inactiveColor: Colors.white,
                                toggleSize: 27,
                                value: nameShow,
                                onToggle: (v) {
                                  setState(() {
                                    nameShow = v;
                                  });
                                },
                              )
                            ],
                          ),
                          FlutterSwitch(
                            padding: 0,
                            height: 28,
                            width: 58,
                            activeToggleColor: purpleColor,
                            inactiveToggleColor: grey,
                            activeColor: Colors.white,
                            inactiveColor: Colors.white,
                            toggleSize: 27,
                            value: nameRequire,
                            onToggle: (v) {
                              setState(() {
                                nameRequire = v;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: whiteColour,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              poppinsText(
                                  text: "Social",
                                  fontSize: 20,
                                  textAlign: TextAlign.start),
                              FlutterSwitch(
                                padding: 0,
                                height: 28,
                                width: 58,
                                activeToggleColor: purpleColor,
                                inactiveToggleColor: grey,
                                activeColor: Colors.white,
                                inactiveColor: Colors.white,
                                toggleSize: 27,
                                value: socialShow,
                                onToggle: (v) {
                                  setState(() {
                                    socialShow = v;
                                  });
                                },
                              )
                            ],
                          ),
                          FlutterSwitch(
                            padding: 0,
                            height: 28,
                            width: 58,
                            activeToggleColor: purpleColor,
                            inactiveToggleColor: grey,
                            activeColor: Colors.white,
                            inactiveColor: Colors.white,
                            toggleSize: 27,
                            value: socialRequire,
                            onToggle: (v) {
                              setState(() {
                                socialRequire = v;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: whiteColour,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              poppinsText(
                                  text: "Address",
                                  fontSize: 20,
                                  textAlign: TextAlign.start),
                              FlutterSwitch(
                                padding: 0,
                                height: 28,
                                width: 58,
                                activeToggleColor: purpleColor,
                                inactiveToggleColor: grey,
                                activeColor: Colors.white,
                                inactiveColor: Colors.white,
                                toggleSize: 27,
                                value: addressShow,
                                onToggle: (v) {
                                  setState(() {
                                    addressShow = v;
                                  });
                                },
                              )
                            ],
                          ),
                          FlutterSwitch(
                            padding: 0,
                            height: 28,
                            width: 58,
                            activeToggleColor: purpleColor,
                            inactiveToggleColor: grey,
                            activeColor: Colors.white,
                            inactiveColor: Colors.white,
                            toggleSize: 27,
                            value: addressRequire,
                            onToggle: (v) {
                              setState(() {
                                addressRequire = v;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: whiteColour,
                    ),
                    Container()
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     poppinsText(text: "Field dsjdhlsdhsdj", fontSize: 20,textAlign: TextAlign.start),
                    //     FlutterSwitch(
                    //       value: isSwitchOn,
                    //       onToggle: (value) {
                    //         setState(() {
                    //           isSwitchOn = value;
                    //         });
                    //       },
                    //     ),
                    //     FlutterSwitch(
                    //       value: isSwitchOn,
                    //       onToggle: (value) {
                    //         setState(() {
                    //           isSwitchOn = value;
                    //         });
                    //       },
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
              DefaultButton(fontSize: 25, title: "Save", margin: EdgeInsets.symmetric(vertical: 35)),
              poppinsText(text: "Copy your api key", fontSize: 32,font: FontWeight.w500),
              30.height,
              Container(
                height: 60,
                padding: EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: greyColor,
                ),
                child:  Center(child: poppinsText(text: "Lorem ipsum dolor sit amet consectetur. Eu dui erat amet cras purus ultricies in nulla.", fontSize: 20,font: FontWeight.w400,textAlign: TextAlign.start,maxLines: 2)),
              ),
              DefaultButton(fontSize: 25, title: "Copy", margin: EdgeInsets.symmetric(vertical: 35)),
            ],
          ),
        ),
      ),
    );
  }

  FlutterSwitch buildFlutterSwitch(bool value) {
    return FlutterSwitch(
      padding: 0,
      height: 28,
      width: 58,
      activeToggleColor: purpleColor,
      inactiveToggleColor: grey,
      activeColor: Colors.white,
      inactiveColor: Colors.white,
      toggleSize: 27,
      value: value,
      onToggle: (v) {
        setState(() {
          value = v;
        });
      },
    );
  }
}


class DonationWidget extends StatefulWidget {
  const DonationWidget({Key? key}) : super(key: key);

  @override
  State<DonationWidget> createState() => _DonationWidgetState();
}

class _DonationWidgetState extends State<DonationWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: MainDrawer(index: 10,)),
          Expanded(
              flex: 6,
              child: DonationScreen()),
        ],
      ),
    );
  }
}