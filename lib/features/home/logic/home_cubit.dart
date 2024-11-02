import 'package:clinics/core/helpers/extensions.dart';
import 'package:clinics/core/networking/api_error_handler.dart';
import 'package:clinics/features/home/data/models/specialization_response_model.dart';
import 'package:clinics/features/home/data/repos/home_repo.dart';
import 'package:clinics/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];

  void getHomeData() async {
    emit(const HomeState.homeLoading());
    final response = await _homeRepo.getHomeData();

    response.when(success: (specializationsResponseModel) {
      specializationsList =
          specializationsResponseModel.specializationDataList ?? [];

      // getting the doctors list for the first specialization by default.
      doctorsFilter(specializationId: specializationsList?.first?.id);
      emit(HomeState.homeSuccess(specializationsList));
    }, failure: (error) {
      emit(HomeState.homeError(errorHandler: error));
    });
  }

  void doctorsFilter({required int? specializationId}) {
    List<Doctors?>? doctorsList = specializationFliterById(specializationId);

    if(!doctorsList.isNullOrEmpty()){
      emit(HomeState.doctorsFilterSuccess(doctorsList));
    }else{
      emit(HomeState.doctorsFilterError(errorHandler: ErrorHandler.handle("No Doctors Found")));
    }
  }

  specializationFliterById(specialId) {
    return specializationsList?.firstWhere((specialization) => specialization?.id == specialId)?.doctorsList;
  }
}
