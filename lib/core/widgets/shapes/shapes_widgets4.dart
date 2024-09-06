import 'package:flutter/material.dart';

class ShapeWiget4 extends StatelessWidget {
  const ShapeWiget4({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 52,
          top: 19.03,
          child: Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(2.09),
            child: Container(
              width: 38.07,
              height: 38.07,
              decoration: const ShapeDecoration(
                color: Color(0xBF233255),
                shape: OvalBorder(),
              ),
            ),
          ),
        ),
        Positioned(
          left: 12.88,
          top: 22.51,
          child: Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(-0.52),
            child: Container(
              width: 19.26,
              height: 19.26,
              decoration: const ShapeDecoration(
                color: Color(0xBF233255),
                shape: StarBorder.polygon(sides: 3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
