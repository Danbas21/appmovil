import 'package:flutter/material.dart';

class Forms5 extends StatelessWidget {
  const Forms5({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 918,
            height: 372,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              shadows: const [
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
          left: 44.13,
          top: 25,
          child: SizedBox(
            width: 354.84,
            child: Text(
              'Attendance Summary',
              style: TextStyle(
                color: Color(0xCC233255),
                fontSize: 20,
                fontFamily: 'Gilroy-SemiBold',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
        ),
        Positioned(
          left: 44.13,
          top: 347,
          child: SizedBox(
            width: 829.73,
            height: 3,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 3,
                  child: Container(
                    width: 829.73,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 11,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFE5E5E5),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 19.42,
                  top: 0,
                  child: Container(
                    width: 510.20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 6,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 503.13,
          top: 25,
          child: Container(
            width: 176.54,
            height: 33,
            padding: const EdgeInsets.all(8),
            decoration: ShapeDecoration(
              color: const Color(0x19233255),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Monthly',
                  style: TextStyle(
                    color: Color(0xCC233255),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(width: 15),
                Container(
                  width: 15,
                  height: 15,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: const Stack(children: []),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 697.33,
          top: 25,
          child: Container(
            width: 176.54,
            height: 33,
            padding: const EdgeInsets.all(8),
            decoration: ShapeDecoration(
              color: const Color(0x19233255),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Students',
                  style: TextStyle(
                    color: Color(0xCC233255),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                const SizedBox(width: 9),
                Container(
                  width: 15,
                  height: 15,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: const Stack(children: []),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          left: 83,
          top: 124,
          child: SizedBox(
            width: 790.61,
            height: 165.46,
          ),
        ),
        const Positioned(
          left: 25,
          top: 75,
          child: SizedBox(
            width: 22,
            height: 220,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '100',
                  style: TextStyle(
                    color: Color(0xB2233255),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  '80',
                  style: TextStyle(
                    color: Color(0xB2233255),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  '60',
                  style: TextStyle(
                    color: Color(0xB2233255),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  '20',
                  style: TextStyle(
                    color: Color(0xB2233255),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  '0',
                  style: TextStyle(
                    color: Color(0xB2233255),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          left: 63,
          top: 310,
          child: SizedBox(
            width: 811,
            height: 16,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Jan',
                  style: TextStyle(
                    color: Color(0xB2233255),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(width: 56),
                Text(
                  'Feb',
                  style: TextStyle(
                    color: Color(0xB2233255),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(width: 56),
                Text(
                  'Mar',
                  style: TextStyle(
                    color: Color(0xB2233255),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(width: 56),
                Text(
                  'Apr',
                  style: TextStyle(
                    color: Color(0xB2233255),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(width: 56),
                Text(
                  'May',
                  style: TextStyle(
                    color: Color(0xB2233255),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(width: 56),
                SizedBox(
                  width: 28,
                  height: double.infinity,
                  child: Text(
                    'Jun',
                    style: TextStyle(
                      color: Color(0xB2233255),
                      fontSize: 13,
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
          left: 57,
          top: 86,
          child: SizedBox(
            width: 817,
            height: 201,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 817,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFE5E5E5),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 51,
                  child: Container(
                    width: 817,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFE5E5E5),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 101,
                  child: Container(
                    width: 817,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFE5E5E5),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 151,
                  child: Container(
                    width: 817,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFE5E5E5),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 201,
                  child: Container(
                    width: 817,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFE5E5E5),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 496,
          top: 156,
          child: Container(
            width: 15.89,
            height: 9,
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: OvalBorder(
                side: BorderSide(width: 1.50, color: Color(0xFF7FBDE4)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 470,
          top: 127,
          child: SizedBox(
            width: 67.08,
            height: 27.80,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 67.08,
                    height: 27.80,
                    decoration: const ShapeDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/67x28"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50, color: Color(0xFF7FBDE4)),
                      ),
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
