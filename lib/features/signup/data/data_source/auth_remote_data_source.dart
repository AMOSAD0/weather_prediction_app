import 'package:firebase_auth/firebase_auth.dart';
import 'package:weather_prediction_app/features/signup/data/error_handler/auth_exceptions.dart';
abstract class AuthRemoteDataSource {
  Future<User?> signUp(String fullName,String email, String password);
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;

  AuthRemoteDataSourceImpl({required this.firebaseAuth});

  @override
  Future<User?> signUp(String fullName,String email, String password) async {
    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email:email,  
        password:password,
      );
      User? user = userCredential.user;

      if (user != null) {
        await user.updateDisplayName(fullName);
        await user.reload();
        user = firebaseAuth.currentUser;
      }
      return user;
    } on FirebaseAuthException catch (e) {
      throw Exception(AuthExceptionHandler.handleException(e.code));
    }
  }
}