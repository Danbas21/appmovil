import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:school_management_system/core/providers/provider_students.dart';

import '../../utils/export_utils.dart';

class DataStudent extends ConsumerWidget {
  const DataStudent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final students = ref.watch(studentProviderProvider);

    return Container(
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
      width: 323,
      height: 509,
      child: Stack(
        children: [
          const Positioned(
            left: 91,
            top: 15,
            child: Text(
              "Datos",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 82,
            child: students.when(
              data: (data) {
                return SizedBox(
                  width: 283,
                  child: Text(
                    'Nombre Completo: ${data['name']} ${data['last_name']}',
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
              top: 203,
              child: students.when(
                  data: (data) {
                    return Text(
                      'Grupo Sanguineo: ${data['bt']}',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
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
                      ))),
          Positioned(
            left: 20,
            top: 263,
            child: students.when(
              data: (data) {
                return Container(
                  width: 283,
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'Address: ${data['address']}',
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
            left: 2,
            top: 2,
            child: Image.asset(
              ImagesSchool.school,
              width: 103,
              height: 61,
            ),
          ),
        ],
      ),
    );
  }
}
