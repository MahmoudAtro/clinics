import 'package:clinics/core/networking/api_service.dart';
import 'package:clinics/core/networking/dio_factory.dart';
import 'package:clinics/features/auth/data/repos/login_repo.dart';
import 'package:clinics/features/auth/logic/login_cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

// dio & ApiService
Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  getit.registerLazySingleton<LoginCubit>(() => LoginCubit(getit()));
}
