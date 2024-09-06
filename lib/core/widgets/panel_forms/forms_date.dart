import 'package:flutter/material.dart';

class FormsDate extends StatelessWidget {
  const FormsDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 300,
            height: 300,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x0C000000),
                  blurRadius: 10,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 15,
          top: 55,
          child: SizedBox(
            width: 275,
            height: 231,
            child: Stack(
              children: [
                Positioned(
                  left: 162.5,
                  top: 132,
                  child: Container(
                    width: 29,
                    height: 29,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF7FBDE4),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x16000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  left: 0,
                  top: 0,
                  child: SizedBox(
                    width: 275,
                    height: 235,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'sun',
                              style: TextStyle(
                                color: Color(0xFFF6AD2B),
                                fontSize: 13,
                                fontFamily: 'Gilroy-SemiBold',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(height: 15),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '31',
                                  style: TextStyle(
                                    color: Color(0x26F6AD2B),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '7',
                                  style: TextStyle(
                                    color: Color(0xB2F6AD2B),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '14',
                                  style: TextStyle(
                                    color: Color(0xB2F6AD2B),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '21',
                                  style: TextStyle(
                                    color: Color(0xB2F6AD2B),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '28',
                                  style: TextStyle(
                                    color: Color(0xB2F6AD2B),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '5',
                                  style: TextStyle(
                                    color: Color(0x26F6AD2B),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 19),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'mon',
                              style: TextStyle(
                                color: Color(0x99233255),
                                fontSize: 13,
                                fontFamily: 'Gilroy-SemiBold',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(height: 15),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '1',
                                  style: TextStyle(
                                    color: Color(0x99233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '8',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '15',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '22',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '29',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '6',
                                  style: TextStyle(
                                    color: Color(0x26233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 19),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'tue',
                              style: TextStyle(
                                color: Color(0x99233255),
                                fontSize: 13,
                                fontFamily: 'Gilroy-SemiBold',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(height: 15),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '2',
                                  style: TextStyle(
                                    color: Color(0x99233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '9',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '16',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '23',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '30',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '7',
                                  style: TextStyle(
                                    color: Color(0x26233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 19),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'wed',
                              style: TextStyle(
                                color: Color(0x99233255),
                                fontSize: 13,
                                fontFamily: 'Gilroy-SemiBold',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(height: 15),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '3',
                                  style: TextStyle(
                                    color: Color(0x99233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '10',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '17',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '24',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '1',
                                  style: TextStyle(
                                    color: Color(0x26233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '8',
                                  style: TextStyle(
                                    color: Color(0x26233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 19),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'thu',
                              style: TextStyle(
                                color: Color(0x99233255),
                                fontSize: 13,
                                fontFamily: 'Gilroy-SemiBold',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(height: 15),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '4',
                                  style: TextStyle(
                                    color: Color(0x99233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '11',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '18',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '25',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '2',
                                  style: TextStyle(
                                    color: Color(0x26233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '9',
                                  style: TextStyle(
                                    color: Color(0x26233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 18),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'fri',
                              style: TextStyle(
                                color: Color(0x99233255),
                                fontSize: 13,
                                fontFamily: 'Gilroy-SemiBold',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(height: 15),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '5',
                                  style: TextStyle(
                                    color: Color(0x99233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '12',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '19',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '26',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '3',
                                  style: TextStyle(
                                    color: Color(0x26233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '10',
                                  style: TextStyle(
                                    color: Color(0x26233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 19),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'sat',
                              style: TextStyle(
                                color: Color(0x99233255),
                                fontSize: 13,
                                fontFamily: 'Gilroy-SemiBold',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(height: 15),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '6',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '13',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '20',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '27',
                                  style: TextStyle(
                                    color: Color(0xB2233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '4',
                                  style: TextStyle(
                                    color: Color(0x26233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '11',
                                  style: TextStyle(
                                    color: Color(0x26233255),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ],
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
          left: 15,
          top: 20,
          child: SizedBox(
            width: 272,
            height: 25,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'April, 2024',
                  style: TextStyle(
                    color: Color(0xFF7FBDE4),
                    fontSize: 16,
                    fontFamily: 'Gilroy-SemiBold',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(width: 138),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 20,
                        height: 20,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-1.57),
                      child: Container(
                        width: 20,
                        height: 20,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
