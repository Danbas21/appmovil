import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:school_management_system/core/providers/provider_students.dart';

import '../../utils/images.dart';

class SchoolGrade extends ConsumerWidget {
  const SchoolGrade({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final students = ref.watch(studentProviderProvider);
    final vigencia = ref.watch(vigenciaProvider);

    return Container(
      width: 347,
      height: 300,
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
      child: Stack(
        children: [
          const Positioned(
            left: 106,
            top: 10,
            child: Text(
              "Grado Escolar",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
          Positioned(
            left: 20,
            top: 72,
            child: students.when(
              data: (data) {
                return SizedBox(
                  width: 283,
                  child: Text(
                    'Nivel:  ${data['nivel']}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                );
              },
              loading: () => const CircularProgressIndicator(),
              error: (error, stack) => Text(
                error.toString(),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 115,
            child: Text(
              'Vigencia:\n\n$vigencia',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
              left: 2,
              top: 2,
              child: Image.asset(
                ImagesSchool.grade,
                width: 103,
                height: 61,
              )),
        ],
      ),
    );
  }
}
