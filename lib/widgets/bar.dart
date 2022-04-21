import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';

class Bar extends StatelessWidget {
  final double barWidth;
  final double barHeight;
  final MainAxisAlignment mainAxisAlignment;
  final BorderRadiusGeometry? borderRadiusGeometry;

  const Bar(
      {Key? key,
      required this.barWidth,
      required this.barHeight,
      required this.mainAxisAlignment,
      required this.borderRadiusGeometry})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Container(
          height: barHeight,
          width: barWidth,
          decoration: BoxDecoration(
              borderRadius: borderRadiusGeometry, color: accentColor),
        )
      ],
    );
  }
}
