import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/book.dart';
import 'firestore_repository.dart';

class BookRepository extends FirestoreRepository<Book> {
  static final CollectionReference<Book> _collection =
      FirebaseFirestore.instance.collection('books').withConverter<Book>(
            fromFirestore: (snapshot, _) => Book.fromSnapshot(snapshot),
            toFirestore: (book, _) => book.toMap(),
          );

  BookRepository() : super(collection: _collection);
}
