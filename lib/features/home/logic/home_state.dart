


import 'package:clinics/core/networking/api_error_handler.dart';
import 'package:clinics/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // specialization
  const factory HomeState.homeLoading() = HomeLoading;
  const factory HomeState.homeSuccess(SpecializationsResponseModel specializationsResponseModel) = HomeSuccess;
  const factory HomeState.homeError({required ErrorHandler errorHandler}) = HomeError;

}
