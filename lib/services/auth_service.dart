import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

abstract class AuthService {
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> signUpWithEmailAndPassword(String email, String password);
  Future<void> signInWithGoogle();
  Future<void> signInWithFacebook();
  Future<void> anonymousSignIn();
  Future<void> signOut();

  // update the user’s profile data
  Future<void> updateUserProfile(String? displayName, String? photoURL);

  // currentUser is a getter that returns the currently signed-in user
  User? get currentUser;

  // authStateChanges is a getter that returns a stream of changes to the user’s sign-in state
  Stream<User?> get authStateChanges;
}

class FirebaseAuthService implements AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FacebookAuth _facebookAuth = FacebookAuth.instance;

  @override
  User? get currentUser => _auth.currentUser;

  @override
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    // Call your authentication server to verify user credentials and generate a custom signed token
    // final String customToken =
    //     await _callYourAuthenticationServer(email, password);
    // // Sign in with the custom token using Firebase Authentication
    // await _auth.signInWithCustomToken(customToken);

    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<void> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await _auth.signInWithCredential(credential);
  }

  @override
  Future<void> signInWithFacebook() async {
    final LoginResult result = await _facebookAuth.login();
    final AuthCredential credential =
        FacebookAuthProvider.credential(result.accessToken!.token);
    await _auth.signInWithCredential(credential);
  }

  @override
  Future<void> anonymousSignIn() async {
    await _auth.signInAnonymously();
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
    // await _googleSignIn.signOut();
    // await _facebookAuth.logOut();
  }

  Future<String> _callYourAuthenticationServer(
      String email, String password) async {
    // Call your authentication server to verify user credentials and generate a custom signed token
    // Return the custom signed token
    return "customToken";
  }

  @override
  Future<void> updateUserProfile(String? displayName, String? photoURL) async {
    if (displayName != null) {
      await _auth.currentUser!.updateDisplayName(displayName);
    }

    if (photoURL != null) {
      await _auth.currentUser!.updatePhotoURL(photoURL);
    }

    await _auth.currentUser!.reload();
  }
}
