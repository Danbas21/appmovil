import 'package:flutter/material.dart';

class ShapeWiget3 extends StatelessWidget {
  const ShapeWiget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 215,
          top: 106,
          child: Container(
            width: 32,
            height: 32,
            decoration: const ShapeDecoration(
              color: Color(0x7FFFFDFA),
              shape: OvalBorder(),
            ),
          ),
        ),
        Positioned(
          left: 426,
          top: 75,
          child: Container(
            width: 32,
            height: 32,
            decoration: const ShapeDecoration(
              color: Color(0x7FFFFDFA),
              shape: OvalBorder(),
            ),
          ),
        ),
        Positioned(
          left: 426,
          top: 393,
          child: Container(
            width: 32,
            height: 32,
            decoration: const ShapeDecoration(
              color: Color(0x7FFFFDFA),
              shape: OvalBorder(),
            ),
          ),
        ),
        Positioned(
          left: 50,
          top: 483,
          child: Container(
            width: 20,
            height: 20,
            decoration: const ShapeDecoration(
              color: Color(0x7FFFFDFA),
              shape: OvalBorder(),
            ),
          ),
        ),
        Positioned(
          left: 70,
          top: 759,
          child: Container(
            width: 20,
            height: 20,
            decoration: const ShapeDecoration(
              color: Color(0x7FFFFDFA),
              shape: OvalBorder(),
            ),
          ),
        ),
        Positioned(
          left: 95,
          top: 0,
          child: Container(
            width: 50,
            height: 50,
            decoration: const ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(width: 5, color: Color(0x7FFFFDFA)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 45,
          top: 310,
          child: Container(
            width: 50,
            height: 50,
            decoration: const ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(width: 5, color: Color(0x7FFFFDFA)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 289,
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
          left: 527,
          top: 503,
          child: Container(
            width: 30,
            height: 30,
            decoration: const ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(width: 5, color: Color(0x7FFFFDFA)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 542,
          top: 232,
          child: Container(
            width: 30,
            height: 30,
            decoration: const ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(width: 5, color: Color(0x7FFFFDFA)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 167,
          top: 300,
          child: Container(
            width: 30,
            height: 30,
            decoration: const ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(width: 5, color: Color(0x7FFFFDFA)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
