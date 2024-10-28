import 'package:clinics/core/networking/api_error_handler.dart';
import 'package:clinics/core/networking/api_result.dart';
import 'package:clinics/features/home/data/apis/home_api_service.dart';
import 'package:clinics/features/home/data/models/specialization_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  

  Future<ApiResult<SpecializationsResponseModel>> getHomeData() async {
    try {
      final response = await _homeApiService.getHomeData();

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
