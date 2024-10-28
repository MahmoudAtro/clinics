import 'package:clinics/features/home/data/models/specialization_response_model.dart';
import 'package:clinics/features/home/ui/widgets/doctors_special_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialtityList extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;
  const DoctorsSpecialtityList({
    super.key,
    required this.specializationDataList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationDataList.length,
        itemBuilder: (_, index) {
          return DoctorsSpecialListItem(
            itemIndex: index,
            specializationsData: specializationDataList[index],
          );
        },
      ),
    );
  }
}
