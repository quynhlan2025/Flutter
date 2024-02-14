import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/BMI_Caculator/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.title});

  final VoidCallback onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          child: Center(
            child: Text(this.title, style: kLargestButtonTextStyle),
          ),
          color: kBottomContainerColour,
          margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.only(bottom: 10.0),
          width: double.infinity,
          height: kBottomContainerHeight,
        ));
  }
}