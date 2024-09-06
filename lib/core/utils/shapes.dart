import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShapeForms extends StatelessWidget {
  final double width;
  final double height;
  ShapeDecoration shapeDecoration;

  ShapeForms({
    super.key,
    required this.width,
    required this.height,
    required this.shapeDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: shapeDecoration,
    );
  }
}
