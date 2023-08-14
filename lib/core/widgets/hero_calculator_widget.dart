import 'package:flutter/material.dart';

class HeroCalculatorWidget extends StatelessWidget {
   final double height;
  final double width;

  const HeroCalculatorWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'calculator',
      child: Image.asset(
        "assets/images/calculator.png",
        height: height,
        width: width,
      ),
    );
  }
}