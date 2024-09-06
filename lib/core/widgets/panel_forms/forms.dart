import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../utils/export_utils.dart';

class Forms1 extends StatelessWidget {
  const Forms1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 70,
            height: 850,
            decoration: const ShapeDecoration(
              color: Color(0xFF233255),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFF6AD2B)),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 10,
                  offset: Offset(4, -4),
                  spreadRadius: 0,
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 50,
          child: SizedBox(
            width: 90,
            height: 850,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: SizedBox(
                    width: 70,
                    height: 615,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              context.go('/panel');
                            },
                            icon: const Icon(Icons.home),
                            iconSize: 43,
                            color: const Color.fromARGB(255, 205, 215, 240),
                          ),
                        ),
                        const SizedBox(height: 55),
                        Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: const Icon(Icons.note),
                            iconSize: 43,
                            color: const Color.fromARGB(255, 205, 215, 240),
                          ),
                        ),
                        const SizedBox(height: 55),
                        Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: const Icon(Icons.book),
                            iconSize: 43,
                            color: const Color.fromARGB(255, 205, 215, 240),
                          ),
                        ),
                        const SizedBox(height: 55),
                        Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              context.go('/card_student');
                            },
                            icon: SvgPicture.asset(
                              ImagesSchool.graduation,
                              colorFilter: const ColorFilter.mode(
                                  Color.fromARGB(255, 205, 215, 240),
                                  BlendMode.srcIn),
                            ),
                            iconSize: 43,
                            color: const Color.fromARGB(255, 205, 215, 240),
                          ),
                        ),
                        const SizedBox(height: 250),
                        Container(
                          width: 60,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              ImagesSchool.gear,
                              colorFilter: const ColorFilter.mode(
                                  Color.fromARGB(255, 205, 215, 240),
                                  BlendMode.srcIn),
                            ),
                            iconSize: 43,
                            color: const Color.fromARGB(255, 205, 215, 240),
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
          left: 20,
          top: 780,
          child: Container(
            width: 30,
            height: 30,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
          ),
        ),
      ],
    );
  }
}
