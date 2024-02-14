// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListViewWSpacePage extends StatelessWidget {

  const ListViewWSpacePage({super.key });
  

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';
    const items = 4;
    return Scaffold(
      
  
        appBar: AppBar(
          title: const Text(title),
        ),
       
       body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                    items, (index) => ItemWidget(text: 'Item $index')),
              ),
            ),
          );
        }),
      );
  }
}
class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        child: Center(child: Text(text)),
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
