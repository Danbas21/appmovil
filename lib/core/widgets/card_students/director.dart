import 'package:flutter/material.dart';

import '../../utils/export_utils.dart';

class Director extends StatelessWidget {
  const Director({super.key});

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: const Color(0xfff8f8f8),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        width: 578,
        height: 146,
        child: Stack(
          children: [
            const Positioned(
              left: 70,
              top: 100,
              child: Column(
                children: [
                  Text(
                    "Director",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Patricia Covarrubias Fernandez",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 110,
              top: 13,
              child: Image.asset(
                ImagesSchool.director,
                width: 123,
                height: 81,
              ),
            ),
          ],
        ),
      );
}
