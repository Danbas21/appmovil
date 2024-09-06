import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../utils/export_utils.dart';
import '../widgets/export_widgets.dart';

class CardStudent extends ConsumerWidget {
  const CardStudent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Estudiante"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          clipBehavior: Clip.antiAlias,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 158, 190, 255)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImagesSchool.logo),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: width / 1.2,
                height: height / 3,
                child: const Picture(),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: width / 1.2,
                height: height / 4,
                child: const DataStudent(),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: width / 1.2,
                height: height / 4,
                child: const SchoolGrade(),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: width / 1.2,
                height: height / 4,
                child: const AuthPerson(),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: width / 1.2,
                height: height / 4,
                child: const Director(),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: width / 1.2,
                height: height / 4,
                child: const Plantel(),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: width / 1.2,
                height: height / 4,
                child: const Phone(),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: width / 1.2,
                height: height / 4,
                child: const Comments(),
              ),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                onPressed: () => context.go('/printing_card'),
                tooltip: 'pre-visualizar',
                child: const Icon(Icons.print),
              )
            ],
          ),
        ),
      ),
    );
  }
}
