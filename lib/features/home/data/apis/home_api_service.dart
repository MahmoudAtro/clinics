import 'package:clinics/core/networking/api_constant.dart';
import 'package:clinics/features/home/data/apis/home_api_constant.dart';
import 'package:clinics/features/home/data/models/specialization_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstant.specializationEP)
  Future<SpecializationsResponseModel> getHomeData();
}
