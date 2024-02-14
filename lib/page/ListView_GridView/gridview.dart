// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text(title)),
        body: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(2, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              );
            })));
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
