import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'photo_perfil.g.dart';

@riverpod
class PhotoCharge extends _$PhotoCharge {
  @override
  FutureOr<Uint8List> build() => _downloadImage(
      "https://firebasestorage.googleapis.com/v0/b/management-ing.appspot.com/o/students%2F1%2FScreenshot%202024-05-14%20110524.png?alt=media&token=4ca72771-46ba-4bf7-9aca-ca668bfc544c");

  Future<Uint8List> _downloadImage(String imageUrl) async {
    final response = await http.get(Uri.parse(imageUrl));
    if (response.statusCode == 200) {
      return response.bodyBytes;
    } else {
      throw Exception('Failed to load image data');
    }
  }
}
