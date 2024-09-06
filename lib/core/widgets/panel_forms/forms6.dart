import 'package:flutter/material.dart';

class Forms6 extends StatelessWidget {
  const Forms6({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 932,
            height: 278,
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x16233255),
                  blurRadius: 10,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
          ),
        ),
        const Positioned(
          left: 25,
          top: 25,
          child: Text(
            'Recently registered users',
            style: TextStyle(
              color: Color(0xCC233255),
              fontSize: 20,
              fontFamily: 'Gilroy-SemiBold',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
        const Positioned(
          left: 817,
          top: 34,
          child: Text(
            'view all users',
            style: TextStyle(
              color: Color(0x99233255),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
        Positioned(
          left: 25,
          top: 70,
          child: SizedBox(
            width: 882,
            height: 215,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: SizedBox(
                    width: 882,
                    height: 50,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 882,
                            height: 50,
                            decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  blurRadius: 5,
                                  offset: Offset(0, 1),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 10,
                          top: 17,
                          child: Text(
                            'Name',
                            style: TextStyle(
                              color: Color(0xCC233255),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 656,
                          top: 18,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.57),
                            child: Container(
                              width: 15,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0x4C233255),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 666,
                          top: 17,
                          child: Text(
                            'Email',
                            style: TextStyle(
                              color: Color(0xCC233255),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 532,
                          top: 18,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.57),
                            child: Container(
                              width: 15,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0x4C233255),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 542,
                          top: 17,
                          child: Text(
                            'Gender',
                            style: TextStyle(
                              color: Color(0xCC233255),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 413,
                          top: 18,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.57),
                            child: Container(
                              width: 15,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0x4C233255),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 423,
                          top: 17,
                          child: Text(
                            'Role',
                            style: TextStyle(
                              color: Color(0xCC233255),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 280,
                          top: 18,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.57),
                            child: Container(
                              width: 15,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0x4C233255),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 290,
                          top: 17,
                          child: Text(
                            'ID',
                            style: TextStyle(
                              color: Color(0xCC233255),
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
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
                  top: 40,
                  child: SizedBox(
                    width: 881,
                    height: 160,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 881,
                          height: 50,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 270,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 270,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 17,
                                        child: Text(
                                          'ActivEdge Technologies',
                                          style: TextStyle(
                                            color: Color(0x7F233255),
                                            fontSize: 14,
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
                                left: 280,
                                top: 0,
                                child: SizedBox(
                                  width: 123,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 123,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 17,
                                        child: Text(
                                          'AET154-5671',
                                          style: TextStyle(
                                            color: Color(0x7F233255),
                                            fontSize: 14,
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
                                left: 413,
                                top: 0,
                                child: SizedBox(
                                  width: 109,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 109,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 17,
                                        child: Text(
                                          'Teacher',
                                          style: TextStyle(
                                            color: Color(0x7F233255),
                                            fontSize: 14,
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
                                left: 532,
                                top: 0,
                                child: SizedBox(
                                  width: 115,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 115,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 17,
                                        child: Text(
                                          'Male',
                                          style: TextStyle(
                                            color: Color(0x7F233255),
                                            fontSize: 14,
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
                                left: 656,
                                top: 0,
                                child: SizedBox(
                                  width: 225,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 225,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 17,
                                        child: Text(
                                          'activedgetecnologies@gmail...',
                                          style: TextStyle(
                                            color: Color(0x7F233255),
                                            fontSize: 14,
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
                        const SizedBox(height: 5),
                        SizedBox(
                          width: 881,
                          height: 50,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 270,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 270,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 17,
                                        child: Text(
                                          'ActivEdge Technologies',
                                          style: TextStyle(
                                            color: Color(0x7F233255),
                                            fontSize: 14,
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
                                left: 280,
                                top: 0,
                                child: SizedBox(
                                  width: 123,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 123,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 17,
                                        child: Text(
                                          'AET154-5671',
                                          style: TextStyle(
                                            color: Color(0x7F233255),
                                            fontSize: 14,
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
                                left: 413,
                                top: 0,
                                child: SizedBox(
                                  width: 109,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 109,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 17,
                                        child: Text(
                                          'Teacher',
                                          style: TextStyle(
                                            color: Color(0x7F233255),
                                            fontSize: 14,
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
                                left: 532,
                                top: 0,
                                child: SizedBox(
                                  width: 115,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 115,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 17,
                                        child: Text(
                                          'Male',
                                          style: TextStyle(
                                            color: Color(0x7F233255),
                                            fontSize: 14,
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
                                left: 656,
                                top: 0,
                                child: SizedBox(
                                  width: 225,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 225,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 17,
                                        child: Text(
                                          'activedgetecnologies@gmail...',
                                          style: TextStyle(
                                            color: Color(0x7F233255),
                                            fontSize: 14,
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
                        const SizedBox(height: 5),
                        SizedBox(
                          width: 881,
                          height: 50,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 270,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 270,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 17,
                                        child: Text(
                                          'ActivEdge Technologies',
                                          style: TextStyle(
                                            color: Color(0x7F233255),
                                            fontSize: 14,
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
                                left: 280,
                                top: 0,
                                child: SizedBox(
                                  width: 123,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 123,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 17,
                                        child: Text(
                                          'AET154-5671',
                                          style: TextStyle(
                                            color: Color(0x7F233255),
                                            fontSize: 14,
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
                                left: 413,
                                top: 0,
                                child: SizedBox(
                                  width: 109,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 109,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 17,
                                        child: Text(
                                          'Teacher',
                                          style: TextStyle(
                                            color: Color(0x7F233255),
                                            fontSize: 14,
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
                                left: 532,
                                top: 0,
                                child: SizedBox(
                                  width: 115,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 115,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 17,
                                        child: Text(
                                          'Male',
                                          style: TextStyle(
                                            color: Color(0x7F233255),
                                            fontSize: 14,
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
                                left: 656,
                                top: 0,
                                child: SizedBox(
                                  width: 225,
                                  height: 50,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 225,
                                          height: 50,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x19000000),
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 10,
                                        top: 17,
                                        child: Text(
                                          'activedgetecnologies@gmail...',
                                          style: TextStyle(
                                            color: Color(0x7F233255),
                                            fontSize: 14,
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
                      ],
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
