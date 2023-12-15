import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
//  upload file
class FireStoreStorageService {
  static UploadTask? uploadFile(String destination, File file) {
    try {
      final ref = FirebaseStorage.instance.ref(destination);

      return ref.putFile(file);
    } on FirebaseException catch (e) {
      return null;
    }
  }
}
