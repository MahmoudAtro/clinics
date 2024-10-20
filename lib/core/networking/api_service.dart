import 'package:clinics/core/networking/api_constant.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // @POST(ApiConstant.apiLogin)
  // Future<String> login(
  //   @Body() Map<String, dynamic> body,
  // );
}
