


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/utils/image_box.dart';
import 'package:origin/utils/styles.dart';

import '../main_drawer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: width < 480 ? AppBar() : null,
      drawer: width < 480 ? Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Container(height: 50,color: Colors.white,),
            Container(height: 50,color: Colors.black,),
            Container(height: 50,color: Colors.blue,),
            Container(height: 50,color: Colors.pink,),
          ],
        ),
      ) : Container(),
      backgroundColor: Colors.black,
      body: width >480 ? Row(
        children: [
          Expanded(
            flex: 2,
              child: MainDrawer(index: 0,)),
          Expanded(
            flex: 6,
              child: DashboardWidget())
        ],
      ) : Row(
        children: [
          Expanded(
              child: DashboardWidget())
        ],
      ),
      bottomNavigationBar: width < 480 ? bottomNav() : null,
    );
  }

  Widget bottomNav(){
    return BottomNavigationBar(
    items:  <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: imageBox(height: 31, width: 31, img: "dashboard"),
    label: 'Dashboard',
    ),
    BottomNavigationBarItem(
      icon: imageBox(height: 31, width: 31, img: "dashboard"),
    label: 'Payments',
    ),
    BottomNavigationBarItem(
      icon: imageBox(height: 31, width: 31, img: "dashboard"),
    label: 'Transactions',
    ),
      BottomNavigationBarItem(
      icon: imageBox(height: 31, width: 31, img: "dashboard"),
    label: 'Settings',
    ),
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: Colors.amber[800],
    onTap: _onItemTapped,
    );
  }
}


class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  List<String> titles = ["Bitcoin","Ethereum","USD Coin","Binance Smart Chain","Polygon","Salana"];
  List<String> images = ["btc","eth","usd","binance","polygon","solana"];
  List<String> subTitles = ["btc","eth","usdc","bnb","batic","sol"];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        actions: [
          Row(
            children: [
              Icon(Icons.notifications,color: black,size: 25,),
              30.width,
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Container(
                height: height > 850 ? 300 : 210,
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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          poppinsText(text: "Balance", fontSize: 36, font: FontWeight.w700,color: Colors.white),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              poppinsText(text: "Address", fontSize: 36, font: FontWeight.w700,color: Colors.white.withOpacity(0.7)),
                              poppinsText(text: "dldhlwdiuweile", fontSize: 36, font: FontWeight.w700,color: Colors.white.withOpacity(0.7)),

                            ],
                          ),
                        ],
                      ),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "\$65,9990",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: whiteColour,
                            fontWeight:  FontWeight.w500,
                            height: 1.2,
                            fontSize: 62
                          ),
                        ),
                      ),
                      poppinsText(text: "Balance", fontSize: 36, font: FontWeight.w700,color: whiteColour),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (c,i){
                  return coinItem(height, images[i],titles[i],subTitles[i].toUpperCase());
                }),
            ],
          ),
        ),
      ),
    );
  }
  Widget coinItem(double height,String img,String title,String subtitle){
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: height > 850 ? 100 : 65,
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Row(
               children: [
                 imageBox(height: height > 850 ? 60 : 40, width:  height > 850 ? 60 : 40, img: img),
                 10.width,
                 poppinsText(text: title, fontSize: 12,),

               ],
             ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                poppinsText(text: "0.00567 $subtitle", fontSize: 12,),
                5.height,
                poppinsText(text: "0.00\$", fontSize: 12,),
              ],
            )
          ],
        ),
      ),
    );
  }
}

