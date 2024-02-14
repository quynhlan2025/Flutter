import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/BMI_Caculator/_input_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BMI_Caculator extends StatelessWidget {
  const BMI_Caculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        ),
        home: InputPage());
  }
}
