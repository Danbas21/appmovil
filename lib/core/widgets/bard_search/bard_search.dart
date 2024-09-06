import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:school_management_system/core/providers/provider_students.dart';

class BardSearch extends ConsumerWidget {
  const BardSearch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController searchController = TextEditingController();

    return SizedBox(
      width: 705,
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: IconButton(
                  icon: const Icon(
                    Icons.person,
                    color: Color(0xFF07090E),
                    size: 24,
                  ),
                  onPressed: () {
                    ref
                        .read(studentProviderProvider.notifier)
                        .updateStudents(searchController.text);
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: searchController,
                  decoration: const InputDecoration(
                    hintText: 'CURP',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(74, 7, 9, 14),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      height: 0,
                      letterSpacing: 0.64,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
