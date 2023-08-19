import 'package:flutter/material.dart';

import '../models/book.dart';
import '../repositories/book_repository.dart';

class BookProvider extends ChangeNotifier {
  final BookRepository _bookRepository = BookRepository();
  Stream<List<Book>> get books => _bookRepository.getDocuments();

  bool _saveSuccess = false;
  bool get saveSuccess => _saveSuccess;

  Future<void> addBook(Book book) async {
    try {
      _saveSuccess = true;
      notifyListeners();
      await _bookRepository.addDocument(book);
    } catch (e) {
      print(e);
    } finally {
      _saveSuccess = false;
      notifyListeners();
    }
  }

  Future<void> updateBook(String id, Map<Object, Object?> data) async {
    await _bookRepository.updateDocument(id, data);
    notifyListeners();
  }

  Future<void> deleteBook(String id) async {
    await _bookRepository.deleteDocument(id);
    notifyListeners();
  }
}
