// base model class for all models firestore documentsnapshot
import 'package:cloud_firestore/cloud_firestore.dart';

class BaseModel {
  final String id;
  final DocumentReference? reference;

  BaseModel({required this.id, this.reference});

  BaseModel.fromSnapshot(DocumentSnapshot snapshot)
      : id = snapshot.id,
        reference = snapshot.reference;
}
