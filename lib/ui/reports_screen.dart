


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/styles.dart';
import 'main_drawer.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({Key? key}) : super(key: key);

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Last 7 days"),value: "Last 7 days"),
    DropdownMenuItem(child: Text("Last 14 days"),value: "Last 14 days"),
    DropdownMenuItem(child: Text("Last 30 days"),value: "Last 30 days"),
    DropdownMenuItem(child: Text("Last 1 year"),value: "Last 1 year"),
  ];
  String selectedValue = "Last 7 days";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              title(title: "Reports"),
              100.height,
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
                          Expanded(child: poppinsText(text: "Payment", fontSize: 20)),
                          Expanded(child: poppinsText(text: "Amount", fontSize: 20)),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              poppinsText(text: "Time range", fontSize: 20),
                              DropdownButtonHideUnderline(
                                child: DropdownButton(
                                     isDense: true,
                                    onChanged: (String? newValue){
                                      setState(() {
                                        selectedValue = newValue!;
                                      });
                                    },
                                    value: selectedValue,
                                    style: GoogleFonts.poppins(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),
                                    items: menuItems
                                ),
                              ),
                            ],
                          ),
                          Expanded(child: poppinsText(text: "Crypto", fontSize: 20)),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.white,
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


AppBar myAppBar() => AppBar(
  backgroundColor: Colors.white,
  elevation: 0,
  actions: [
    Row(
      children: [
        Icon(Icons.notifications,size: 40,color: blackColour,),
        50.width
      ],
    )
  ],
);



class ReportsWidget extends StatefulWidget {
  const ReportsWidget({Key? key}) : super(key: key);

  @override
  State<ReportsWidget> createState() => _ReportsWidgetState();
}

class _ReportsWidgetState extends State<ReportsWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: MainDrawer(index: 4,)),
          Expanded(
              flex: 6,
              child: ReportsScreen()),
        ],
      ),
    );
  }
}
