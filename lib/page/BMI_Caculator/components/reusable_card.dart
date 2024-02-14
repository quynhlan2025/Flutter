import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResusableCard extends StatelessWidget {
  ResusableCard(
      {required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPress,
        child: Container(
            child: cardChild,
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                color: colour, borderRadius: BorderRadius.circular(10.0))));
  }
}
