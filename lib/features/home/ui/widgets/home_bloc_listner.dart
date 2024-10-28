import 'package:clinics/features/home/ui/widgets/doctors_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacehelper.dart';
import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';
import 'doctors_specialtity_list.dart';

class HomeBlocListner extends StatelessWidget {
  const HomeBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is HomeLoading ||
            current is HomeSuccess ||
            current is HomeError,
        builder: (context, state) {
          return state.maybeWhen(
              homeLoading: setupLoading,
              homeSuccess: (data) => setupSuccess(data.specializationDataList),
              homeError: (error) => setupError(),
              orElse: () {
                return const SizedBox.shrink();
              });
        });
  }

  Widget setupLoading() {
    return const SizedBox(
      height: 100,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget setupSuccess(specializationsData) {
    return Expanded(
        child: Column(
      children: [
        DoctorsSpecialtityList(
          specializationDataList: specializationsData ?? [],
        ),
        verticalspace(8),
        DoctorsList(
          doctorsList: specializationsData?[0]?.doctorsList,
        ),
      ],
    ));
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
