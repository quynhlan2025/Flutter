// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListViewHorizontalPage extends StatelessWidget {
  const ListViewHorizontalPage({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text(title)),
        body: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 200,
            child: ListView(
                //  scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160,
                    color: Colors.red,
                  ),
                  Container(
                    width: 160,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 160,
                    color: Colors.green,
                  ),
                  Container(
                    width: 160,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 160,
                    color: Colors.orange,
                  ),
                ])));
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
