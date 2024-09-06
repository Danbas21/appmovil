import 'package:flutter/material.dart';

class ShapeWiget2 extends StatelessWidget {
  const ShapeWiget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 396,
          top: 0,
          child: Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(1.57),
            child: Container(
              width: 332,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.white.withOpacity(0.15000000596046448),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 448,
          top: 0,
          child: Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(1.57),
            child: Container(
              width: 263,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.white.withOpacity(0.15000000596046448),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 212,
          top: 194,
          child: Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(1.57),
            child: Container(
              width: 196,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.white.withOpacity(0.15000000596046448),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 197,
          top: 2,
          child: Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(1.57),
            child: Container(
              width: 196,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.white.withOpacity(0.15000000596046448),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 500,
          top: 0,
          child: Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(1.57),
            child: Container(
              width: 202,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.white.withOpacity(0.15000000596046448),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 14,
          child: Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(1.57),
            child: Container(
              width: 388,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.white.withOpacity(0.15000000596046448),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 167,
          top: 98,
          child: Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(1.57),
            child: Container(
              width: 388,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.white.withOpacity(0.15000000596046448),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 334,
          top: 4,
          child: Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(1.57),
            child: Container(
              width: 228,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.white.withOpacity(0.15000000596046448),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 589,
          top: 0,
          child: Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(1.57),
            child: Container(
              width: 316,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.white.withOpacity(0.15000000596046448),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 680,
          top: 0,
          child: Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(1.57),
            child: Container(
              width: 260,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Colors.white.withOpacity(0.15000000596046448),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
