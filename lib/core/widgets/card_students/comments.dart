import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:school_management_system/core/providers/provider_students.dart';

import '../../utils/export_utils.dart';

class Comments extends ConsumerWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final students = ref.watch(studentProviderProvider);
    return Container(
      width: 438,
      height: 174,
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
            left: 139,
            top: 12,
            child: Text(
              "Comentarios:",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 129,
            top: 70,
            child: students.when(
              data: (data) {
                return SizedBox(
                  width: 283,
                  child: Text(
                    'Alergias: ${data['allergies']} ',
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
              left: 15,
              top: 50,
              child: Image.asset(
                ImagesSchool.screen,
                width: 61,
                height: 61,
              )),
        ],
      ),
    );
  }
}
