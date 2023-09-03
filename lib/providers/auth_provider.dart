import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  int _loginStatus = 100;
  int _registerStatus = 100;
  int _initStatus = 100;
  int get loginStatus => _loginStatus;
  int get registerStatus => _registerStatus;
  int get initStatus => _initStatus;
  final _instance = auth.FirebaseAuth.instance;
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    _loginStatus = 1;
    notifyListeners();
    try {
       await _instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
        _loginStatus = 2;
      notifyListeners();
    } on auth.FirebaseAuthException catch (_) {
      _loginStatus = 0;
      notifyListeners();
    } catch (e) {
      _loginStatus = 0;
      notifyListeners();
    }
  }

  // register method
  Future<void> signUpWithEmailAndPassword(
      {required String username,
      required String email,
      required String password}) async {
    _registerStatus = 1;
    notifyListeners();
    try {
      await _instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      _registerStatus = 2;
      notifyListeners();
    } on auth.FirebaseAuthException catch (_) {
      _registerStatus = 0;
      notifyListeners();
    } catch (e) {
      _registerStatus = 0;
      notifyListeners();
    }
  }

  //initailize
  Future<void> initialize() async {
    _initStatus = 1;
    notifyListeners();
    try {
      if (_instance.currentUser != null) {
        _initStatus = 2;
        notifyListeners();
      } else {
        _initStatus = 0;
        notifyListeners();
      }
    } catch (e) {
      _initStatus = 0;
      notifyListeners();
    }
  }

  //logout
  Future<void> FirebaseLogout() async{
    await _instance.signOut();
  }
}
