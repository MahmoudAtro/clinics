import 'package:clinics/core/networking/api_service.dart';
import 'package:clinics/core/networking/dio_factory.dart';
import 'package:clinics/features/auth/data/repos/login_repo.dart';
import 'package:clinics/features/auth/data/repos/signup_repo.dart';
import 'package:clinics/features/auth/logic/login_cubit/login_cubit.dart';
import 'package:clinics/features/auth/logic/signup_cubit/signup_cubit.dart';
import 'package:clinics/features/home/data/apis/home_api_service.dart';
import 'package:clinics/features/home/data/repos/home_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

// dio & ApiService
Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  getit.registerFactory<LoginCubit>(() => LoginCubit(getit()));

  // signup
  getit.registerLazySingleton<SignupRepo>(() => SignupRepo(getit()));
  getit.registerFactory<SignupCubit>(() => SignupCubit(getit()));

  // home
  getit.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getit.registerLazySingleton<HomeRepo>(() => HomeRepo(getit()));

}
