import 'package:flutter/material.dart';

const String appName = "BMI Calculator";

const Color mainColor = Colors.white;
const Color accentColor = Colors.lightGreen;

const BorderRadiusGeometry borderRadiusGeometryLeft = BorderRadius.only(
    topLeft: Radius.circular(20), bottomLeft: Radius.circular(20));

const BorderRadiusGeometry borderRadiusGeometryRight = BorderRadius.only(
    topRight: Radius.circular(20), bottomRight: Radius.circular(20));

List getBMI(double w, double h) {
  double bmiDoubleResult = w / (h * h);
  String bmiTextResult = "0";

  if (bmiDoubleResult > 25) {
    bmiTextResult = "You're over weight";
  } else if (bmiDoubleResult >= 18.5 && bmiDoubleResult <= 25) {
    bmiTextResult = "You have normal weight";
  } else {
    bmiTextResult = "You're under weight";
  }

  if (bmiDoubleResult.toString() == double.nan.toString()) {
    bmiDoubleResult = 0.0;
  }

  return [bmiDoubleResult, bmiTextResult];
}
