import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';

import '../models/user.dart';
import '../repositories/user_repository.dart';
import '../services/auth_service.dart';

class AuthProvider extends ChangeNotifier {
  final AuthService _authService;
  final UserRepository _userRepository = UserRepository();

  User? _user;
  bool _isLoading = true;
  String _message = "";

  AuthProvider(this._authService) {
    _authService.authStateChanges.listen((auth.User? user) {
      if (user == null) {
        _user = null;
        _isLoading = false;
        notifyListeners();
      } else {
        _user = User.fromUser(user);
        _isLoading = false;
        notifyListeners();
      }
    });
  }

  User? get user => _user;
  bool get isLoading => _isLoading;
  String get message => _message;

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      _isLoading = true;
      _message = "";
      notifyListeners();
      await _authService.signInWithEmailAndPassword(email, password);
      // Store user data to Firestore
      await _storeUserData();
    } on auth.FirebaseAuthException catch (e) {
      _message = e.message!;
    } catch (e) {
      _message = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // register method
  Future<void> signUpWithEmailAndPassword(
      {required String email,required String password}) async {
    try {
      _isLoading = true;
      _message = "";
      notifyListeners();
      await _authService.signUpWithEmailAndPassword(email, password);
      // Store user data to Firestore
      await _storeUserData();
    } on auth.FirebaseAuthException catch (e) {
      _message = e.message!;
    } catch (e) {
      _message = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      _isLoading = true;
      _message = "";
      notifyListeners();
      await _authService.signInWithGoogle();
      // Store user data to Firestore
      await _storeUserData();
    } on auth.FirebaseAuthException catch (e) {
      _message = e.message!;
    } catch (e) {
      _message = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signInWithFacebook() async {
    try {
      _isLoading = true;
      _message = "";
      notifyListeners();
      await _authService.signInWithFacebook();
      // Store user data to Firestore
      await _storeUserData();
    } on auth.FirebaseAuthException catch (e) {
      _message = e.message!;
    } catch (e) {
      _message = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> anonymousSignIn() async {
    try {
      _isLoading = true;
      _message = "";
      notifyListeners();
      await _authService.anonymousSignIn();
      // Store user data to Firestore
      await _storeUserData();
    } on auth.FirebaseAuthException catch (e) {
      _message = e.message!;
    } catch (e) {
      _message = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> signOut() async {
    await _authService.signOut();
  }

  Future<void> _storeUserData() async {
    if (_user != null) {
      final user = _userRepository.getDocumentById(_user!.uid);
      user.listen((event) async {
        if (event == null) {
          await _userRepository.addDocument(_user!);
        }
      });
    }
  }

  Future<void> updateUserProfile(
      {String? displayName, String? photoURL}) async {
    try {
      _isLoading = true;
      _message = "";
      notifyListeners();
      await _authService.updateUserProfile(displayName, photoURL);
      // Store user data to Firestore
      await _storeUserData();
    } on auth.FirebaseAuthException catch (e) {
      _message = e.message!;
    } catch (e) {
      _message = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
