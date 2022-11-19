import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  int num;
  MyCard({Key? key, required this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 350,
        height: 120,
        color: Colors.cyan[700],
        child: Text(
          "Card $num",
          style: TextStyle(color: Colors.white),
        ));
  }
}
