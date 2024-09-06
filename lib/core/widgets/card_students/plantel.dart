import 'package:flutter/material.dart';

import '../../utils/export_utils.dart';

class Plantel extends StatelessWidget {
  const Plantel({super.key});

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
        height: 136,
        child: Stack(
          children: [
            const Positioned(
              left: 10,
              top: 90,
              child: Text(
                'Plantel:\nCedro 219, Col. Sta. María la Ribera, \nCuauhtémoc, \nC.P. 06400, \nCiudad de México, CDMX',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
                left: 100,
                top: 15,
                child: Image.asset(
                  ImagesSchool.plantel,
                  width: 123,
                  height: 81,
                )),
          ],
        ),
      );
}
