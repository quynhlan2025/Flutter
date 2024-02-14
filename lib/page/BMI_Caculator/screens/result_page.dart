import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/BMI_Caculator/caculator_brain.dart';
import 'package:flutter_application_1/page/BMI_Caculator/components/bottom_button.dart';
import 'package:flutter_application_1/page/BMI_Caculator/constants.dart';
import 'package:flutter_application_1/page/BMI_Caculator/components/reusable_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultPage extends StatelessWidget {
  ResultPage({super.key, this.bmiResult, this.interpretation, this.resultText});
  String? bmiResult = "";
  String? resultText = "";
  String? interpretation = "";
  CalculatorBrain? calc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'BMI CACULATOR',
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your result',
              style: kTileTextStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: ResusableCard(
              colour: kActiveCardcolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                   resultText!.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult!,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation!,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            title: "RE-CACULATE",
            onTap: () => {
              Navigator.pop(context)
            },
          )
        ],
      ),
    );
  }
}
