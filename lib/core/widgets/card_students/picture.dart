import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:school_management_system/core/providers/file_picker_provider.dart';
import 'package:school_management_system/core/providers/provider_students.dart';
import 'package:school_management_system/core/utils/images.dart';

class Picture extends ConsumerWidget {
  const Picture({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double widht = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final students = ref.watch(chargePhotoProvider);
    final studentsProvider = ref.watch(studentProviderProvider);
    final uploadPhoto = studentsProvider.when(
      data: (data) => data.id,
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => 'this is an error $error',
    );

    return Container(
        width: 800,
        height: 800,
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
        child: IconButton(
          icon: students.asData!.value == 'Loading...'
              ? const CircularProgressIndicator()
              : students.asData!.value == 'this is an error'
                  ? const Icon(Icons.error)
                  : students.asData!.value == ''
                      ? Image.asset(ImagesSchool.picture)
                      : Image.network(
                          students.asData!.value,
                          fit: BoxFit.cover,
                        ),
          onPressed: () {
            ref.read(chargePhotoProvider.notifier).uploadPicture(uploadPhoto);
          },
        ));
  }
}
