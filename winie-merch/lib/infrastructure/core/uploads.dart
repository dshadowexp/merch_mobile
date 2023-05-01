import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:injectable/injectable.dart';

@injectable
class Uploads {
  FirebaseStorage _storage;

  Uploads(this._storage);

  Future<String> uploadImage(String? imageFilePath) async {
    try {
      Reference storageReference = _storage
          .ref()
          .child('images/${DateTime.now().toIso8601String()}.png');
      File file = await _compressImage(imageFilePath);
      UploadTask uploadTask = storageReference.putFile(file);

      TaskSnapshot downloadUrl = await uploadTask.whenComplete(() {});
      String url = await downloadUrl.ref.getDownloadURL();
      return url;
    } catch (e) {
      return '';
    }
  }

  Future<File> _compressImage(String? path) async {
    try {
      File compressedFile =
          await FlutterNativeImage.compressImage(path.toString(), quality: 20);
      return compressedFile;
    } catch (e) {
      throw new Error();
    }
  }
}
