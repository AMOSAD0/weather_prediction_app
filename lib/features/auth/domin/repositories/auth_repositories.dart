import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<User?> signUp(String fullName,String email, String password);
  Future<User?> login(String email, String password);
}