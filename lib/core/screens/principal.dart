import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../widgets/export_widgets.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        width: 1440,
        height: 1024,
        decoration: const BoxDecoration(color: Color(0xFFFDFDF5)),
        child: Stack(
          children: [
            const Positioned(
              left: 0,
              top: 0,
              child: SizedBox(
                width: 1440,
                height: 1024,
                child: ShapeWidget6(),
              ),
            ),
            const Positioned(
              left: 50,
              top: 350,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 525,
                        height: 257,
                        child: ShapeWidgetText(),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 52,
                        height: 52,
                        child: ShapeWiget4(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 532,
              top: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    width: 900,
                    height: 60,
                    child: Stack(
                      children: [
                        const ShapeWidget7(),
                        Positioned(
                          left: 639,
                          top: 0,
                          child: SizedBox(
                            width: 201,
                            height: 39,
                            child: FloatingActionButton(
                              onPressed: () => context.go('/panel'),
                              backgroundColor: const Color(0xFF7FBDE4),
                              child: const Text(
                                'Login/Register',
                                style: TextStyle(
                                  color: Color(0xFF233255),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                  letterSpacing: 0.00,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
