
import 'package:cloud_firestore/cloud_firestore.dart';

import 'base.dart';

class Post extends BaseModel {
  final String caption;
  final String? userId;
  final String? imageUrl;

  // constructor
  Post({
    required String id,
    required this.caption,
    this.userId,
    this.imageUrl,
  }) : super(id: id);

  // fromMap
  Post.fromMap(Map<String, dynamic> data, String id)
      : caption = data['caption'],
        userId = data['userId'],
        imageUrl = data['imageUrl'],
        super(id: id);

  // fromSnapshot
  Post.fromSnapshot(DocumentSnapshot snapshot)
      : caption = snapshot['caption'],
        userId = snapshot['userId'],
        imageUrl = snapshot['imageUrl'],
        super(id: snapshot.id);

  // toMap
  Map<String, dynamic> toMap() {
    return {
      'caption': caption,
      'userId': userId,
      'imageUrl': imageUrl,
    };
  }
}
