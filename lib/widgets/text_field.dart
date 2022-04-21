import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldContainer extends StatelessWidget {
  TextEditingController textController;
  final String hintText;

  TextFieldContainer({
    Key? key,
    required this.hintText,
    required this.textController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      child: TextField(
        controller: textController,
        style: TextStyle(
            fontSize: 42, fontWeight: FontWeight.w300, color: accentColor),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.w300,
                color: accentColor.withOpacity(.8))),
      ),
    );
  }
}
