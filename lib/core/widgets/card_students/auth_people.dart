import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:school_management_system/core/providers/provider_students.dart';

import '../../utils/export_utils.dart';

class AuthPerson extends ConsumerWidget {
  const AuthPerson({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final students = ref.watch(studentProviderProvider);

    return Container(
      width: 908,
      height: 264,
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
          Positioned(
            left: 20,
            top: 70,
            child: students.when(
              data: (data) {
                return SizedBox(
                  width: 283,
                  child: Text(
                    'Personas Autorizadas:\n\n${data['people_authorized']} ',
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
              right: 15,
              top: 30,
              child: Image.asset(
                ImagesSchool.teacher,
                width: 123,
                height: 81,
              )),
        ],
      ),
    );
  }
}
