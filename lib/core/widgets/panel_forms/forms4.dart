import 'package:flutter/material.dart';

class Forms4 extends StatelessWidget {
  const Forms4({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 427,
            height: 50,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.50, color: Color(0xFFE5E5E5)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 13,
          child: SizedBox(
            width: 116,
            height: 25,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0.70,
                  child: Container(
                    width: 25,
                    height: 25,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(children: []),
                  ),
                ),
                const SizedBox(width: 20),
                const Text(
                  'Search...',
                  style: TextStyle(
                    color: Color(0x4C233255),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: 0.64,
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
