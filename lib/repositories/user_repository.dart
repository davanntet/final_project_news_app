

import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user.dart';
import 'firestore_repository.dart';

class UserRepository extends FirestoreRepository<User> {
  static final CollectionReference<User> _collection =
      FirebaseFirestore.instance.collection('users').withConverter<User>(
            fromFirestore: (snapshot, _) => User.fromSnapshot(snapshot),
            toFirestore: (user, _) => user.toMap(),
          );

  UserRepository() : super(collection: _collection);
}
