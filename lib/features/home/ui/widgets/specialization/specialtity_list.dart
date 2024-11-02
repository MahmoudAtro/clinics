import 'package:clinics/features/home/data/models/specialization_response_model.dart';
import 'package:clinics/features/home/logic/home_cubit.dart';
import 'package:clinics/features/home/ui/widgets/specialization/special_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialtityList extends StatefulWidget {
  final List<SpecializationsData?> specializationDataList;
  const SpecialtityList({
    super.key,
    required this.specializationDataList,
  });

  @override
  State<SpecialtityList> createState() => _DoctorsSpecialtityListState();
}

class _DoctorsSpecialtityListState extends State<SpecialtityList> {
  var selectSpecialId = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationDataList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectSpecialId = index;
              });

              context.read<HomeCubit>().doctorsFilter(
                    specializationId: widget.specializationDataList[index]?.id,
                  );
            },
            child: SpecialListItem(
              selectedIndex: selectSpecialId,
              itemIndex: index,
              specializationsData: widget.specializationDataList[index],
            ),
          );
        },
      ),
    );
  }
}
