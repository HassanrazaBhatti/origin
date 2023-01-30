


import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/ui/reports_screen.dart';
import 'package:origin/ui/start/auth/custom_text_field.dart';

import '../utils/styles.dart';
import '../widgets/default_button.dart';
import 'main_drawer.dart';

class PaymentLink extends StatefulWidget {
  const PaymentLink({Key? key}) : super(key: key);

  @override
  State<PaymentLink> createState() => _PaymentLinkState();
}

class _PaymentLinkState extends State<PaymentLink> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: myAppBar(),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 50,right: 200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.height,
                Align(
                    alignment: Alignment.center,
                    child: title(title: "Payment link")),
                DefaultButton(
                  title: "Create a new payment link",
                  fontSize: 24,
                  margin: EdgeInsets.only(top: 30),
                ),
                20.height,
                Container(
                  height:  50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                        hintText: "Search payment ID",
                        border: InputBorder.none,
                        fillColor: greyColor,
                        filled: true,
                    ),
                  ),
                ).cornerRadiusWithClipRRect(10),
                30.height,
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
                            Expanded(child: poppinsText(text: "Payment ID", fontSize: 20)),
                            Expanded(child: poppinsText(text: "Price", fontSize: 20)),
                            Expanded(child: poppinsText(text: "Currency", fontSize: 20)),
                            Expanded(child: poppinsText(text: "Invoice URL", fontSize: 20)),
                            Expanded(child: poppinsText(text: "Date", fontSize: 20)),
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
                          poppinsText(text: "No payment links yet. It takes a couple of clicks to\n create one!", fontSize: 20,maxLines: 2),
                        ],
                      )
                    ],
                  ),
                ),
                100.height

              ],
            ),
          ),
        ),
      ),
    );
  }
}


class PymentWidget extends StatefulWidget {
  const PymentWidget({Key? key}) : super(key: key);

  @override
  State<PymentWidget> createState() => _PymentWidgetState();
}

class _PymentWidgetState extends State<PymentWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: MainDrawer(index: 20,)),
          Expanded(
              flex: 6,
              child: PaymentLink()),
        ],
      ),
    );
  }
}