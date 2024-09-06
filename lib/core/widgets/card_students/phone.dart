import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:school_management_system/core/providers/provider_students.dart';

import '../../utils/export_utils.dart';

class Phone extends ConsumerWidget {
  const Phone({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final students = ref.watch(studentProviderProvider);

    String formatPhoneNumber(String number) {
      if (number.length != 10) {
        return number;
      }
      return '(${number.substring(0, 2)}) ${number.substring(2, 6)}-${number.substring(6)}';
    }

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
      width: 438,
      height: 174,
      child: Stack(
        children: [
          const Positioned(
            left: 109,
            top: 12,
            child: Text(
              "Telefonos de emergencia",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 85,
            child: students.when(
              data: (data) {
                return SizedBox(
                  width: 283,
                  child: Text(
                    'Telefono Madre: ${formatPhoneNumber(data['phonem'])}\nTelefono Padre: ${formatPhoneNumber(data['phonef'])}\nTelefono Emergencia: ${formatPhoneNumber(data['emergency_contact'])}',
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
              top: 15,
              child: Image.asset(
                ImagesSchool.phon,
                width: 61,
                height: 61,
              )),
        ],
      ),
    );
  }
}
