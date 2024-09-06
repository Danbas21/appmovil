import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:image_picker/image_picker.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:school_management_system/core/providers/provider_students.dart';

part 'file_picker_provider.g.dart';

@riverpod
class ChargePhoto extends _$ChargePhoto {
  @override
  FutureOr<String> build() {
    final students = ref.watch(studentProviderProvider);
    return students.when(
      data: (data) => data['image'],
      loading: () => 'Loading...',
      error: (error, stack) => 'this is an error $error',
    );
  }

  FutureOr<void> uploadPicture(studentId) async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    final FirebaseStorage storage = FirebaseStorage.instance;
    final metadata = SettableMetadata(contentType: "image/png");
    final String nameFile = image!.path.split('\\').last;

    Reference ref =
        storage.ref().child('students').child(studentId).child(nameFile);

    // Upload file and metadata to the specified path
    UploadTask uploadTask = ref.putFile(File(image.path), metadata);
    TaskSnapshot snap = await uploadTask;

    String downloadUrl = await snap.ref.getDownloadURL();
    FirebaseFirestore.instance.collection('students').doc(studentId).update({
      'image': downloadUrl,
    });
    state = AsyncData(downloadUrl);
    return null;
  }
}

@riverpod
FutureOr<Uint8List?> down(DownRef ref, String imageUrl) async {
  final response = await http.get(Uri.parse(imageUrl));
  if (response.statusCode == 200) {
    return response.bodyBytes;
  } else {
    throw Exception('Failed to load image data');
  }
}
