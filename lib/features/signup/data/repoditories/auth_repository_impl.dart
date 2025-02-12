import 'package:firebase_auth/firebase_auth.dart';
import 'package:weather_prediction_app/features/signup/data/data_source/auth_remote_data_source.dart';
import 'package:weather_prediction_app/features/signup/domin/repositories/auth_repositories.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({required this.authRemoteDataSource});
  @override
  Future<User?> signUp(String fullName,String email, String password) {
    return authRemoteDataSource.signUp(fullName,email, password);
  }
}