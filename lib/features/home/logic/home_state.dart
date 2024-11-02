


import 'package:clinics/core/networking/api_error_handler.dart';
import 'package:clinics/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // specialization
  const factory HomeState.homeLoading() = HomeLoading;
  const factory HomeState.homeSuccess(List<SpecializationsData?>? specializationDataList) = HomeSuccess;
  const factory HomeState.homeError({required ErrorHandler errorHandler}) = HomeError;

  // Doctors Filter
  const factory HomeState.doctorsFilterSuccess(List<Doctors?>? doctorsDataList) =
  DoctorsFilterSuccess;
  const factory HomeState.doctorsFilterError({required ErrorHandler errorHandler}) = DoctorsFilterError;

}
