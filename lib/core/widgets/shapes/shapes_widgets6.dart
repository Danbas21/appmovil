import 'package:flutter/material.dart';
import 'package:school_management_system/core/utils/images.dart';
import '../export_widgets.dart';

class ShapeWidget6 extends StatelessWidget {
  const ShapeWidget6({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 848,
            height: 1024,
            decoration: const BoxDecoration(color: Color(0xFFFDFDF5)),
          ),
        ),
        Positioned(
          left: 50.89,
          top: 19,
          child: Container(
            width: 128.64,
            height: 111.66,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImagesSchool.logo,
                ),
                fit: BoxFit.fill,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x26233255),
                  blurRadius: 2.61,
                  offset: Offset(0, 2.61),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x26233255),
                  blurRadius: 2.61,
                  offset: Offset(2.61, 0),
                  spreadRadius: 0,
                )
              ],
            ),
          ),
        ),
        const Positioned(
          left: 389,
          top: 71,
          child: Opacity(
            opacity: 0.50,
            child: SizedBox(
              width: 358,
              height: 1024,
              child: ShapeWidget(),
            ),
          ),
        ),
        const Positioned(
          left: 809,
          top: 0,
          child: SizedBox(
            width: 631,
            height: 1024,
            child: ShapeWidget5(),
          ),
        ),
      ],
    );
  }
}
