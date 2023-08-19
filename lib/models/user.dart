
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

import 'base.dart';

class User extends BaseModel {
  final String uid;
  final String? email;
  final String? displayName;
  final String? photoURL;
  final bool isOnline;
  final DateTime? lastSeen;

  User({
    required this.uid,
    this.email,
    this.displayName,
    this.photoURL,
    this.isOnline = false,
    this.lastSeen,
  }) : super(id: uid);

  // fromSnapshot()
  User.fromSnapshot(DocumentSnapshot snapshot)
      : uid = snapshot.id,
        email = snapshot['email'],
        displayName = snapshot['displayName'],
        photoURL = snapshot['photoURL'],
        isOnline = snapshot['isOnline'],
        lastSeen = snapshot['lastSeen'].toDate(),
        super(id: snapshot.id);

  // fromMap
  User.fromMap(Map<String, dynamic> map)
      : uid = map['uid'],
        email = map['email'],
        displayName = map['displayName'],
        photoURL = map['photoURL'],
        isOnline = map['isOnline'],
        lastSeen = map['lastSeen'].toDate(),
        super(id: map['uid']);

  // fromUser (Firebase's user)
  User.fromUser(auth.User user)
      : uid = user.uid,
        email = user.email,
        displayName = user.displayName,
        photoURL = user.photoURL,
        isOnline = false,
        lastSeen = null,
        super(id: user.uid);

  // toMap()
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'displayName': displayName,
      'photoURL': photoURL,
      'isOnline': isOnline,
      'lastSeen': lastSeen,
    };
  }
}
