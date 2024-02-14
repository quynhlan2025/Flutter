// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unnecessary_new, prefer_const_constructors_in_immutables, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/BMI_Caculator/caculator_brain.dart';
import 'package:flutter_application_1/page/BMI_Caculator/components/bottom_button.dart';
import 'package:flutter_application_1/page/BMI_Caculator/components/reusable_card.dart';
import 'package:flutter_application_1/page/BMI_Caculator/components/round_icon_button.dart';
import 'package:flutter_application_1/page/BMI_Caculator/constants.dart';
import 'package:flutter_application_1/page/BMI_Caculator/screens/result_page.dart';


import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/icon_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.female;
  int mHeight = 180;
  int mWeight = 60;
  int age = 60;

  @override
  Widget build(BuildContext context) {

    CalculatorBrain calc;
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
              child: Row(children: <Widget>[
            Expanded(
                child: new ResusableCard(
              onPress: () {
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              colour: selectedGender == Gender.male
                  ? kActiveCardcolor
                  : kInactiveCardcolor,
              cardChild: new IconContent(
                icon: FontAwesomeIcons.mars,
                label: 'MALE',
              ),
            )),
            Expanded(
                child: new ResusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardcolor
                        : kInactiveCardcolor,
                    cardChild: new IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    )))
          ])),
          Expanded(
            child: new ResusableCard(
                colour: kActiveCardcolor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('HEIGHT', style: kLabelTextStyle),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(mHeight.toString(), style: kNumberTextStyle),
                          Text('Cm', style: kLabelTextStyle),
                        ]),
                    SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: mHeight.toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (double newValue) {
                            setState(() {
                              mHeight = newValue.round();
                            });
                          },
                        ))
                  ],
                )),
          ),
          Expanded(
              child: Row(children: <Widget>[
            Expanded(
              child: new ResusableCard(
                  colour: kActiveCardcolor,
                  cardChild: Column(
                    children: <Widget>[
                      Text('WEIGHT', style: kLabelTextStyle),
                      Text(mWeight.toString(), style: kNumberTextStyle),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () => {
                                setState(() {
                                  mWeight--;
                                })
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () => {
                                setState(() {
                                  mWeight++;
                                })
                              },
                            ),
                          ])
                    ],
                  )),
            ),
            Expanded(
                child: new ResusableCard(
              colour: kActiveCardcolor,
              cardChild: Column(children: <Widget>[
                Text('AGE', style: kLabelTextStyle),
                Text(age.toString(), style: kNumberTextStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RoundIconButton(
                      icon: FontAwesomeIcons.minus,
                      onPress: () => {
                        setState(() {
                          age--;
                        })
                      },
                    ),
                    SizedBox(width: 10.0),
                    RoundIconButton(
                      icon: FontAwesomeIcons.plus,
                      onPress: () => {
                        setState(() {
                          age++;
                        })
                      },
                    ),
                  ],
                )
              ]),
            ))
          ])),
          BottomButton(
            title: "CACULATE",
            onTap: () => {
                calc=new CalculatorBrain(height: mHeight, weight: mWeight),
                Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                     ResultPage(bmiResult: calc?.caculateBMI(),resultText: calc?.getResult(),interpretation: calc.getInterPretation(),)))
            },
          )
        ]));
    ;
  }
}


