import 'package:flutter/material.dart';

class ShapeWidgetText extends StatelessWidget {
  const ShapeWidgetText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Positioned(
          left: 0,
          top: 6,
          child: SizedBox(
            width: 525,
            height: 251,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 166,
                  child: Opacity(
                    opacity: 0.50,
                    child: Text(
                      'YOUR KIDS',
                      style: TextStyle(
                        color: Color(0xFF233255),
                        fontSize: 70,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                        letterSpacing: 9.80,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Opacity(
                    opacity: 0.50,
                    child: Text(
                      'BETTER',
                      style: TextStyle(
                        color: Color(0xFF7FBDE4),
                        fontSize: 70,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                        letterSpacing: 9.80,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 83,
                  child: Opacity(
                    opacity: 0.50,
                    child: Text(
                      'FUTURE FOR',
                      style: TextStyle(
                        color: Color(0xFF233255),
                        fontSize: 70,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                        letterSpacing: 9.80,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: SizedBox(
            width: 525,
            height: 251,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 166,
                  child: Text(
                    'YOUR KIDS',
                    style: TextStyle(
                      color: Color(0xFF233255),
                      fontSize: 70,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: 9.80,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Text(
                    'BETTER',
                    style: TextStyle(
                      color: Color(0xFF7FBDE4),
                      fontSize: 70,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: 9.80,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 83,
                  child: Text(
                    'FUTURE FOR',
                    style: TextStyle(
                      color: Color(0xFF233255),
                      fontSize: 70,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: 9.80,
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
