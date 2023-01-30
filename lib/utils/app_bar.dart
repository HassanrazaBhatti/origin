

import 'package:flutter/material.dart';
import 'package:origin/utils/styles.dart';

import 'image_box.dart';

AppBar buildAppBar(String label) {
  return AppBar(
    elevation: 0,
    backgroundColor: whiteColour,
    leading: Row(
      children: [
        imageBox(height: 5, width: 30, img: "back"),
      ],
    ),
    title: title(title: label),
    centerTitle: true,
    actions: [
      Icon(Icons.notifications,color: blackColour,size: 25,)
    ],
  );
}
