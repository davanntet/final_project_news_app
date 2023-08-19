import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class CloudStorageHelper {
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  Future<String> uploadFile(File file, String path) async {
    try {
      final Reference storageReference = _firebaseStorage.ref().child(path);
      final UploadTask uploadTask = storageReference.putFile(file);
      final TaskSnapshot taskSnapshot = await uploadTask;
      final String downloadUrl = await taskSnapshot.ref.getDownloadURL();
      return downloadUrl;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteFile(String path) async {
    try {
      final Reference storageReference = _firebaseStorage.ref().child(path);
      await storageReference.delete();
    } catch (e) {
      rethrow;
    }
  }

  // upload multiple files
  Future<List<String>> uploadFiles(List<File> files, String path) async {
    try {
      final List<String> downloadUrls = [];
      for (final File file in files) {
        final String downloadUrl = await uploadFile(file, path);
        downloadUrls.add(downloadUrl);
      }
      return downloadUrls;
    } catch (e) {
      rethrow;
    }
  }
}
