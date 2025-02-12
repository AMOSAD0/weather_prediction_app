import 'package:firebase_auth/firebase_auth.dart';
import 'package:weather_prediction_app/features/signup/domin/repositories/auth_repositories.dart';

class AuthUseCase {
  final AuthRepository repository;

  AuthUseCase(this.repository);

   Future<User?> signUp(String fullName,String email, String password) => repository.signUp(fullName,email, password);
}