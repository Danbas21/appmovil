import 'package:flutter/material.dart';
import 'package:school_management_system/core/utils/images.dart';
import '../export_widgets.dart';

class ShapeWidget5 extends StatelessWidget {
  const ShapeWidget5({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 84,
            height: 388,
            decoration: const ShapeDecoration(
              color: Color(0xFF233255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 39,
          top: 0,
          child: SizedBox(
            width: 592,
            height: 1024,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 592,
                    height: 1024,
                    decoration: const BoxDecoration(color: Color(0xFFC4C4C4)),
                  ),
                ),
                Positioned(
                  left: -102,
                  top: 300,
                  child: Container(
                    width: 843,
                    height: 729,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImagesSchool.hero3cover),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 592,
                    height: 329,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(1.00, 0.00),
                        end: Alignment(-1, 0),
                        colors: [
                          Color(0xFF6CB1DB),
                          Color(0xFF71B4DE),
                          Color(0xFF72B5DF),
                          Color(0xFF78B9E1),
                          Color(0xFF7CBBE4),
                          Color(0xFF7CBBE4),
                          Color(0xFF7FBDE4),
                          Color(0xFF7FBDE4)
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -39,
                  top: 0,
                  child: Container(
                    width: 84,
                    height: 429,
                    decoration: const ShapeDecoration(
                      color: Color(0xAD233255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: -182,
                  top: 0,
                  child: SizedBox(
                    width: 680,
                    height: 486,
                    child: ShapeWiget2(),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          left: 24,
          top: 103,
          child: SizedBox(
            width: 572,
            height: 779,
            child: ShapeWiget3(),
          ),
        ),
        Positioned(
          left: 39,
          top: 0,
          child: Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(1.57),
            child: Container(
              width: 392,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFF6AD2B),
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
