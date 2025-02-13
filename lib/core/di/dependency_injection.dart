import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_prediction_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:weather_prediction_app/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:weather_prediction_app/features/auth/data/repoditories/auth_repository_impl.dart';
import 'package:weather_prediction_app/features/auth/domin/repositories/auth_repositories.dart';
import 'package:weather_prediction_app/features/auth/domin/use_case/auth_use_case.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Firebase
  getIt.registerLazySingleton(() => FirebaseAuth.instance);

  //Data Source
  getIt.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(firebaseAuth: getIt()));

  // Repository
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(authRemoteDataSource: getIt()),);

  //use case
  getIt.registerLazySingleton(() => AuthUseCase(getIt()));

  //Bloc
  getIt.registerFactory(() => AuthBloc(getIt()));
}
