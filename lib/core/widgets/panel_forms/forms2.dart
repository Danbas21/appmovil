import 'package:flutter/material.dart';

class Forms2 extends StatelessWidget {
  const Forms2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 201,
          child: Container(
            width: 300,
            height: 555,
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x11000000),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 15,
          top: 221,
          child: SizedBox(
            width: 270,
            height: 465,
            child: Stack(
              children: [
                const Positioned(
                  left: 0,
                  top: 0,
                  child: Text(
                    'Upcoming events',
                    style: TextStyle(
                      color: Color(0xCC233255),
                      fontSize: 16,
                      fontFamily: 'Gilroy-SemiBold',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 5,
                  top: 35,
                  child: SizedBox(
                    width: 261,
                    height: 35,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: ShapeDecoration(
                            color: const Color(0xCC233255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(21),
                            ),
                          ),
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'All',
                                style: TextStyle(
                                  color: Color(0xFFFFD790),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0x7F7FBDE4)),
                              borderRadius: BorderRadius.circular(21),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Today',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0x7F7FBDE4)),
                              borderRadius: BorderRadius.circular(21),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Weekly',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 0.50, color: Color(0x7F7FBDE4)),
                              borderRadius: BorderRadius.circular(21),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Monthly',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 85,
                  child: SizedBox(
                    width: 270,
                    height: 80,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 2,
                          top: 0,
                          child: Container(
                            width: 268,
                            height: 80,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(1.00, 0.00),
                                end: Alignment(-1, 0),
                                colors: [Color(0xA8F6AD2A), Color(0x19F6AD2B)],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.57),
                            child: Container(
                              width: 80,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 2,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFFF6AD2B),
                                  ),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 5,
                                    offset: Offset(2, 0),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 7,
                          top: 10,
                          child: Text(
                            'Saturday',
                            style: TextStyle(
                              color: Color(0xFF657088),
                              fontSize: 12,
                              fontFamily: 'Gilroy-Medium',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 12,
                          top: 35,
                          child: SizedBox(
                            width: 246,
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam.',
                              style: TextStyle(
                                color: Color(0x7F233255),
                                fontSize: 10,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0.15,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 207,
                          top: 65,
                          child: Text(
                            '9TH April 2022',
                            style: TextStyle(
                              color: Color(0x4C233255),
                              fontSize: 8,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 185,
                  child: SizedBox(
                    width: 270,
                    height: 80,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 2,
                          top: 0,
                          child: Container(
                            width: 268,
                            height: 80,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(1.00, 0.00),
                                end: Alignment(-1, 0),
                                colors: [Color(0xA84DC152), Color(0x194DC152)],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.57),
                            child: Container(
                              width: 80,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 2,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF4DC152),
                                  ),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 5,
                                    offset: Offset(2, 0),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 7,
                          top: 10,
                          child: Text(
                            'Saturday',
                            style: TextStyle(
                              color: Color(0xFF657088),
                              fontSize: 12,
                              fontFamily: 'Gilroy-Medium',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 12,
                          top: 35,
                          child: SizedBox(
                            width: 246,
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam.',
                              style: TextStyle(
                                color: Color(0x7F233255),
                                fontSize: 10,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0.15,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 207,
                          top: 65,
                          child: Text(
                            '9TH April 2022',
                            style: TextStyle(
                              color: Color(0x4C233255),
                              fontSize: 8,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 285,
                  child: SizedBox(
                    width: 270,
                    height: 80,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 2,
                          top: 0,
                          child: Container(
                            width: 268,
                            height: 80,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(1.00, 0.00),
                                end: Alignment(-1, 0),
                                colors: [Color(0xA8F62B2B), Color(0x19F62B2B)],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.57),
                            child: Container(
                              width: 80,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 2,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFFF62A2A),
                                  ),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 5,
                                    offset: Offset(2, 0),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 7,
                          top: 10,
                          child: Text(
                            'Saturday',
                            style: TextStyle(
                              color: Color(0xFF657088),
                              fontSize: 12,
                              fontFamily: 'Gilroy-Medium',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 12,
                          top: 35,
                          child: SizedBox(
                            width: 246,
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam.',
                              style: TextStyle(
                                color: Color(0x7F233255),
                                fontSize: 10,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0.15,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 207,
                          top: 65,
                          child: Text(
                            '9TH April 2022',
                            style: TextStyle(
                              color: Color(0x4C233255),
                              fontSize: 8,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 385,
                  child: SizedBox(
                    width: 270,
                    height: 80,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 2,
                          top: 0,
                          child: Container(
                            width: 268,
                            height: 80,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(1.00, 0.00),
                                end: Alignment(-1, 0),
                                colors: [Color(0xA8233255), Color(0x19233255)],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.57),
                            child: Container(
                              width: 80,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 2,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF233255),
                                  ),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x19000000),
                                    blurRadius: 5,
                                    offset: Offset(2, 0),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 7,
                          top: 10,
                          child: Text(
                            'Saturday',
                            style: TextStyle(
                              color: Color(0xFF657088),
                              fontSize: 12,
                              fontFamily: 'Gilroy-Medium',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 12,
                          top: 35,
                          child: SizedBox(
                            width: 246,
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam.',
                              style: TextStyle(
                                color: Color(0x7F233255),
                                fontSize: 10,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0.15,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 207,
                          top: 65,
                          child: Text(
                            '9TH April 2022',
                            style: TextStyle(
                              color: Color(0x4C233255),
                              fontSize: 8,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 24,
          top: 0,
          child: SizedBox(
            width: 252,
            height: 107,
            child: Stack(
              children: [
                Positioned(
                  left: 244,
                  top: 0,
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFF6AD2B),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 43,
                  top: 103,
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFF62A2A),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 210,
                  top: 33,
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF4CC151),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 248,
                  top: 33,
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF4DC152),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 68,
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF4DC152),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 43,
                  top: 68,
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF4DC152),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 86,
                  top: 103,
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFF62A2A),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 130,
                  top: 103,
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFF62A2A),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 175,
                  top: 103,
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFF62A2A),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 212,
                  top: 103,
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFF62A2A),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
