import 'package:flutter/material.dart';

class ShapeWidget extends StatelessWidget {
  const ShapeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 312,
          top: 0,
          child: Container(
            width: 32,
            height: 32,
            decoration: const ShapeDecoration(
              color: Color(0x7FF6AD2B),
              shape: OvalBorder(),
            ),
          ),
        ),
        Positioned(
          left: 133,
          top: 213,
          child: Container(
            width: 20,
            height: 20,
            decoration: const ShapeDecoration(
              color: Color.fromARGB(126, 66, 64, 60),
              shape: OvalBorder(),
            ),
          ),
        ),
        Positioned(
          left: 262,
          top: 670,
          child: Container(
            width: 30,
            height: 30,
            decoration: const ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(width: 5, color: Color(0x7FF6AD2B)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 328,
          top: 362,
          child: Container(
            width: 30,
            height: 30,
            decoration: const ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(width: 5, color: Color(0x4C233255)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 535,
          child: Container(
            width: 30,
            height: 30,
            decoration: const ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(width: 5, color: Color(0x4C233255)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 25,
          top: 128,
          child: Container(
            width: 50,
            height: 50,
            decoration: const ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(width: 5, color: Color(0x7FF6AD2B)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
