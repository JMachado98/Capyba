import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final auth = FirebaseAuth.instance;

  Future<UserCredential> SignInWithCredential(AuthCredential credential) =>
      auth.signInWithCredential(credential);

  Future<void> logout() => auth.signOut();
  Stream<User> get currentUser => auth.authStateChanges();
}
