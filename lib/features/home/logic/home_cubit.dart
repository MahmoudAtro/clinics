import 'package:clinics/features/home/data/repos/home_repo.dart';
import 'package:clinics/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getHomeData() async {
    emit(const HomeState.homeLoading());
    final response = await _homeRepo.getHomeData();

    response.when(success: (specializationsResponseModel){
      emit(HomeState.homeSuccess(specializationsResponseModel));
    },
    
     failure:(error){
      emit(HomeState.homeError(errorHandler: error));
     }
     
     );
  }
}
