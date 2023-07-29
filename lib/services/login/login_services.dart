import 'package:firebase_auth/firebase_auth.dart';

abstract class LoginServices {
  Future<UserCredential> login();
}
