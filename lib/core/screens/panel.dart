import 'package:flutter/material.dart';
import '../utils/export_utils.dart';
import '../widgets/export_widgets.dart';

class PanelScreen extends StatelessWidget {
  const PanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1440,
        height: 1024,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Color(0xFF233255)),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 1440,
                height: 1024,
                decoration: const BoxDecoration(color: Color(0xFFFDFDFD)),
              ),
            ),
            Positioned(
              left: 1080,
              top: 0,
              child: Container(
                width: 360,
                height: 1024,
                decoration: const BoxDecoration(color: Color(0xFFFAFAFA)),
              ),
            ),
            Positioned(
              left: 1080,
              top: 0,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(1.57),
                child: Container(
                  width: 1024,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0x4C7FBDE4),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 30,
              top: 131,
              child: SizedBox(
                width: 70,
                height: 850,
                child: Forms1(),
              ),
            ),
            const Positioned(
              left: 1110,
              top: 119,
              child: SizedBox(
                width: 300,
                height: 295,
                child: FormsDate(),
              ),
            ),
            const Positioned(
              left: 1110,
              top: 238,
              child: SizedBox(
                width: 400,
                height: 756,
                child: Forms2(),
              ),
            ),
            const Positioned(
              left: 124.50,
              top: 180,
              child: Forms3(),
            ),
            const Positioned(
              left: 629,
              top: 90,
              child: SizedBox(
                width: 427,
                height: 50,
                child: Forms4(),
              ),
            ),
            const Positioned(
              left: 124,
              top: 348,
              child: SizedBox(
                width: 918,
                height: 372,
                child: Forms5(),
              ),
            ),
            const Positioned(
              left: 124,
              top: 746,
              child: SizedBox(
                width: 932,
                height: 285,
                child: Forms6(),
              ),
            ),
            const Positioned(
              left: 871,
              top: 33,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '...Administrator/',
                      style: TextStyle(
                        color: Color(0x7F233255),
                        fontSize: 14,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: 0.70,
                      ),
                    ),
                    TextSpan(
                      text: 'Dashboard',
                      style: TextStyle(
                        color: Color(0xFFF6AD2B),
                        fontSize: 14,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: 0.70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 100.89,
              top: 30,
              child: Container(
                width: 128.64,
                height: 111.66,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImagesSchool.logo),
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
          ],
        ),
      ),
    );
  }
}
