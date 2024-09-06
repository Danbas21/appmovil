import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'provider_students.g.dart';

@riverpod
class StudentProvider extends _$StudentProvider {
  @override
  FutureOr<DocumentSnapshot<Map<String, dynamic>>> build() {
    final instanceData = FirebaseFirestore.instance.collection('students');
    return instanceData.doc('1').get();
  }

  String capitalize(String text) {
    return text
        .split(' ')
        .map((word) => word.splitMapJoin(
              RegExp(r'^[A-Za-z]'),
              onMatch: (m) => m.group(0)!.toUpperCase(),
              onNonMatch: (n) => n.toLowerCase(),
            ))
        .join(' ');
  }

  Future<void> updateStudents(String filter) async {
    final instanceData = FirebaseFirestore.instance.collection('students');
    bool isCurp = RegExp(r'^[A-Za-z]{4}\d{6}[A-Za-z\d]{8}$').hasMatch(filter);

    QuerySnapshot<Map<String, dynamic>> querySnapshot = await instanceData
        .where(isCurp ? 'curp' : 'last_name',
            isEqualTo: isCurp ? filter : capitalize(filter))
        .get();

    state = AsyncValue.data(querySnapshot.docs.first);
  }
}

@riverpod
String vigencia(VigenciaRef ref) {
  final grade = ref.watch(studentProviderProvider);
  return grade.when(
    data: (data) {
      String gradeValue = data['grade'];
      int year = DateTime.now().year;
      switch (gradeValue[0]) {
        case '1' || '4':
          return '$year-${year + 1}\n${year + 1}-${year + 2}\n${year + 2}-${year + 3}';
        case '2' || '5':
          return '$year-${year + 1}\n${year + 1}-${year + 2}';

        default:
          return '$year-${year + 1}';
      }
    },
    loading: () => 'Loading...',
    error: (error, stack) => error.toString(),
  );
}
