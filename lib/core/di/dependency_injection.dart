import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:weather_prediction_app/features/auth/data/data_source/auth_local_data_source.dart';
import 'package:weather_prediction_app/features/auth/data/model/user_model.dart';
import 'package:weather_prediction_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:weather_prediction_app/features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:weather_prediction_app/features/auth/data/repoditories/auth_repository_impl.dart';
import 'package:weather_prediction_app/features/auth/domin/repositories/auth_repositories.dart';
import 'package:weather_prediction_app/features/auth/domin/use_case/auth_use_case.dart';
import 'package:weather_prediction_app/features/auth/presentation/cubit_local_data/local_data_cubit.dart';
import 'package:weather_prediction_app/features/location/bloc/location_bloc.dart';
import 'package:weather_prediction_app/features/location/data/location_datasource.dart';
import 'package:weather_prediction_app/features/location/data/location_local_data.dart';
import 'package:weather_prediction_app/features/location/data/repositories/location_repository_impl.dart';
import 'package:weather_prediction_app/features/location/domain/repositories/location_repository.dart';
import 'package:weather_prediction_app/features/location/domain/usecases/get_location_usecase.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Firebase
  getIt.registerLazySingleton(() => FirebaseAuth.instance);

  //

  //Hive
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter());
  final userBox = await Hive.openBox<UserModel>('userBox');
  final locationBox = await Hive.openBox<String>('locationBox');

  //Data Source
  getIt.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(firebaseAuth: getIt()));
  getIt.registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl(userBox));
  getIt.registerLazySingleton<LocationDatasource>(
    () => LocationDatasourceImpl(),
  );
  getIt.registerLazySingleton<LocationLocalData>(
    () => LocationLocalDataImpl(locationBox),
  );

  // Repository
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
        authRemoteDataSource: getIt(), authLocalDataSource: getIt()),
  );
  getIt.registerLazySingleton<LocationRepository>(
    () => LocationRepositoryImpl(dataSource: getIt(),localData: getIt()),
  );

  //use case
  getIt.registerLazySingleton(() => AuthUseCase(getIt()));
  getIt.registerLazySingleton(
    () => GetLocationUsecase(getIt()),
  );

  //Bloc
  getIt.registerFactory(() => AuthBloc(getIt()));
  getIt.registerFactory(() => LocationBloc(getIt()));
  getIt.registerFactory(() => LocalDataCubit(getIt()),);
}
