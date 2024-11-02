import 'package:clinics/core/helpers/spacehelper.dart';
import 'package:clinics/features/home/ui/widgets/doctors/doctors_shimmer_loading.dart';
import 'package:clinics/features/home/ui/widgets/specialization/specialization_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';
import 'specialtity_list.dart';

class SpecialBlocListner extends StatelessWidget {
  const SpecialBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is HomeLoading ||
            current is HomeSuccess ||
            current is HomeError,
        builder: (context, state) {
          return state.maybeWhen(
              homeLoading: () => setupLoading(),
              homeSuccess: (data) => setupSuccess(data),
              homeError: (error) => setupError(),
              orElse: () {
                return const SizedBox.shrink();
              });
        });
  }

  Widget setupLoading() {
    return Expanded(
        child: Column(
      children: [
        const SpecialityShimmerLoading(),
        verticalspace(8),
        const DoctorsShimmerLoading(),
      ],
    ));
  }

  Widget setupSuccess(specializationsData) {
    return SpecialtityList(
      specializationDataList: specializationsData ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
