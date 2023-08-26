import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  late final SharedPreferences prefs;
  int _loginStatus = 1;
  int _registerStatus = 1;
  int _initStatus = 1;
  int get loginStatus => _loginStatus;
  int get registerStatus => _registerStatus;
  int get initStatus => _initStatus;
  final _instance = auth.FirebaseAuth.instance;
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    _loginStatus = 1;
    notifyListeners();

    try {
      prefs = await SharedPreferences.getInstance();
      final result = await _instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = result.user;
      if (user != null) {
        _loginStatus = 2;
      } else {
        _loginStatus = 0;
      }
      notifyListeners();
      // DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance.collection('users').doc(result.user?.uid).get();
      // if (documentSnapshot.exists) {
      //   Map<String, dynamic> userData = documentSnapshot.data() as Map<String, dynamic>;
      //   // Access the user data
      //   String username = userData['username'];
      //   String email = userData['email'];
      //   // Do something with the retrieved user data
      //   print('Username: $username');
      //   print('Email: $email');
      // } else {
      //   print('User document does not exist');
      // }
    } on auth.FirebaseAuthException catch (e) {
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
      prefs = await SharedPreferences.getInstance();
      final credential = await _instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = credential.user;
      if (user != null) {
        final token = await user.getIdToken();

        await prefs.setString("AccessToken", token.toString());
        await FirebaseFirestore.instance
            .collection('users')
            .doc(credential.user!.uid)
            .set({
          'username': username,
          'email': email,
          'password': password,
          'uid': credential.user!.uid,
        });

        _registerStatus = 2;
      } else {
        _registerStatus = 0;
      }
    } on auth.FirebaseAuthException catch (e) {
      _registerStatus = -1;
    } catch (e) {
      _registerStatus = -1;
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
      await prefs.remove("AccessToken");
      notifyListeners();
    }
  }

  //logout
  Future<void> FirebaseLogout() async{
    await _instance.signOut();
  }
}
