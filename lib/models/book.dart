// example: book model: name, author, price
import 'package:cloud_firestore/cloud_firestore.dart';

import 'base.dart';


class Book extends BaseModel {
  final String name;
  final String author;
  final double price;

  Book({
    required String id,
    required this.name,
    required this.author,
    required this.price,
  }) : super(id: id);

  Book.fromMap(Map<String, dynamic> data, String id)
      : name = data['name'],
        author = data['author'],
        price = data['price'],
        super(id: id);

  Book.fromSnapshot(DocumentSnapshot snapshot)
      : name = snapshot['name'],
        author = snapshot['author'],
        price = snapshot['price'],
        super(id: snapshot.id);

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'author': author,
      'price': price,
    };
  }
}
