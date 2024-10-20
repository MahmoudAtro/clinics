import 'package:clinics/core/networking/api_constant.dart';
import 'package:clinics/features/auth/data/models/login_request_body.dart';
import 'package:clinics/features/auth/data/models/login_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstant.apiLogin)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
