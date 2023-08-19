import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirestoreRepository<T> {
  final CollectionReference<T> collection;

  FirestoreRepository({required this.collection});

  Future<void> addDocument(T data) async {
    await collection.add(data);
  }

  Future<void> updateDocument(String id, Map<Object, Object?> data) async {
    await collection.doc(id).update(data);
  }

  Future<void> deleteDocument(String id) async {
    await collection.doc(id).delete();
  }

  Stream<List<T>> getDocuments() {
    return collection
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
  }

  Stream<T?> getDocumentById(String id) {
    return collection.doc(id).snapshots().map((doc) => doc.data());
  }

  Stream<List<T>> getDocumentsById(String id) {
    return collection
        .where('id', isEqualTo: id)
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
  }

  Stream<List<T>> getDocumentsByField(String field, String value) {
    return collection
        .where(field, isEqualTo: value)
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
  }
}
