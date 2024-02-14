// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  //   padding: EdgeInsets.only(left: 10.0),
    
                child: SvgPicture.asset(
                  'images/arrow_icon.svg',
                  width: 18.0,
                  height: 18.0,
                ),
              ),
              TextBoxEmail()
            ]),
      ),
    );
  }
}

class TextBoxEmail extends StatelessWidget {
  const TextBoxEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
