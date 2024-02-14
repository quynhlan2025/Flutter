import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/BMI_Caculator/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  IconContent({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 80.0),
          SizedBox(height: 15.0),
          Text(label, style: kLabelTextStyle)
        ]);
  }
}

// ignore: non_constant_identifier_names
