import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/utils/styles.dart';
import 'package:origin/widgets/default_button.dart';

import 'auth/create_account.dart';

class OnBoardingSecond extends StatefulWidget {
  OnBoardingSecond({super.key});

  @override
  State<OnBoardingSecond> createState() => _OnBoardingSecondState();
}

class _OnBoardingSecondState extends State<OnBoardingSecond> {
  final CarouselController _controller = CarouselController();

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<Widget> items = [
      FirstItem(width, height, "bitcoin_accepted",
          "Crypto payments for \n eCommerce"),
      FirstItem(
          width, height, "coin", "Instant payment with no\n charge backs"),
      FirstItem(width, height, "bitcoin_tech", "High Blockchain security"),
      FirstItem(width, height, "customer support", "Account support"),
    ];
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
                items: items,
                options: CarouselOptions(
                  height: 400,
                  // aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: items.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
            DefaultButton(
              onTap: (){
                Get.to(CreateAccount());
              },
              fontSize: 24,
              title: "Get Started",
              margin: EdgeInsets.only(top: 50),
            ),
            20.height,
            GestureDetector(
              onTap: () {
                // Get.to()
              },
              child: poppinsText(
                  maxLines: 2,
                  text: "I already have an account",
                  fontSize: 15,
                  color: orangeLite,
                  font: mediumLite),
            ),
          ],
        ),
      ),
    );
  }

  Widget FirstItem(double width, double height, String img, String title) {
    return Column(
      children: [
        Image.asset(
          "assets/images/$img.png",
          width: width * 0.25,
          height: height * 0.25,
        ),
        AutoSizeText(
          title,
          maxFontSize: 64,
          maxLines: 2,
          textAlign: TextAlign.center,
          minFontSize: 12,
          style: GoogleFonts.poppins(
              color: orangeLite, fontWeight: medium, height: 1.2, fontSize: 64),
        ),
      ],
    );
  }
}
