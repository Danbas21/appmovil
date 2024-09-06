import 'package:flutter/material.dart';

class ShapeWidget7 extends StatelessWidget {
  const ShapeWidget7({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 4,
          child: SizedBox(
            width: 570,
            height: 39,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 267,
                    height: 39,
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Programs',
                          style: TextStyle(
                            color: Color(0xCC233255),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(width: 50),
                        Text(
                          'Extra-Curricular',
                          style: TextStyle(
                            color: Color(0xCC233255),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 376,
                  top: 0,
                  child: Container(
                    width: 194,
                    height: 39,
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Our Staff',
                          style: TextStyle(
                            color: Color(0xCC233255),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(width: 50),
                        Text(
                          'Gallery',
                          style: TextStyle(
                            color: Color(0xCC233255),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
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
