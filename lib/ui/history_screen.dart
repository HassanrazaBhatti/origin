import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:origin/ui/reports_screen.dart';

import '../utils/styles.dart';
import 'main_drawer.dart';

class HistoryScreen extends StatelessWidget {
   HistoryScreen({Key? key})
      : super(key: key);

  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index!.toDouble() * Random().nextDouble());
  });
  List<FlSpot> mySpots = [FlSpot(10, 15)];

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
              20.height,
              Align(
                child: title(title: "Subscription"),
              ),
              20.height,
              Container(
                padding: EdgeInsets.all(5),
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: greyColor,
                    width: 1
                  )
                ),
                child: LineChart(
                  LineChartData(
                    lineBarsData: [
                      LineChartBarData(
                        dotData: FlDotData(
                          show: false,
                        ),
                        color: purpleColor,
                        spots: dummyData1,
                        isCurved: false,
                      ),
                    ],
                    borderData: FlBorderData(show: false),
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    ),
                  ),
                ),
              ),
              30.height,
              Row(
                children: [
                 Container(
                   margin: EdgeInsets.only(right: 5),
                   height: 50,
                   width: 80,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: greyColor,
                   ),
                   child: Center(child: poppinsText(text: "24 H", fontSize: 20),),
                 ).cornerRadiusWithClipRRect(10), Container(
                    margin: EdgeInsets.only(right: 5),
                   height: 50,
                   width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                   child: Center(child: poppinsText(text: "7 D", fontSize: 20),),
                 ).cornerRadiusWithClipRRect(10), Container(
                    margin: EdgeInsets.only(right: 5),
                   height: 50,
                   width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                   child: Center(child: poppinsText(text: "14 D", fontSize: 20),),
                 ).cornerRadiusWithClipRRect(10), Container(
                    margin: EdgeInsets.only(right: 5),
                   height: 50,
                   width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                   child: Center(child: poppinsText(text: "30 D", fontSize: 20),),
                 ).cornerRadiusWithClipRRect(10), Container(
                    margin: EdgeInsets.only(right: 5),
                   height: 50,
                   width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                   child: Center(child: poppinsText(text: "1YR", fontSize: 20),),
                 ).cornerRadiusWithClipRRect(10),
                ],
              ),
              40.height,
              Container(
                height: 400,
                margin: EdgeInsets.symmetric(horizontal: 50),
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
                          Expanded(child: poppinsText(text: "Amount send\nand receive", fontSize: 20,maxLines: 2)),
                          Expanded(child: poppinsText(text: "Action", fontSize: 20)),
                          Expanded(child: poppinsText(text: "Status", fontSize: 20)),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              100.height
            ],
          ),
        ),
      ),
    );
  }
}




class HistoryWidget extends StatefulWidget {
  const HistoryWidget({Key? key}) : super(key: key);

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: MainDrawer(index: 2,)),
          Expanded(
              flex: 6,
              child: HistoryScreen()),
        ],
      ),
    );
  }
}