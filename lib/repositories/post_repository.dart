import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/post.dart';
import 'firestore_repository.dart';

class PostRepository extends FirestoreRepository<Post> {
  static final CollectionReference<Post> _collection =
      FirebaseFirestore.instance.collection('posts').withConverter<Post>(
            fromFirestore: (snapshot, _) => Post.fromSnapshot(snapshot),
            toFirestore: (post, _) => post.toMap(),
          );

  PostRepository() : super(collection: _collection);
}
