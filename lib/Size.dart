import 'package:flutter/material.dart';

class Size {
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    orientation = MediaQuery
        .of(context)
        .orientation; //وضع افقى او راسى

    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * .024
        : screenWidth! * .024;

    //print('this is the default size $defaultSize');
  }
}