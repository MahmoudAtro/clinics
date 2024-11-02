import 'package:clinics/features/home/data/models/specialization_response_model.dart';
import 'package:clinics/features/home/ui/widgets/doctors/doctors_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({
    super.key,
    required this.doctorsList,
  });

  final List<Doctors?>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList!.length,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(doctorModel: doctorsList?[index]);
        },
      ),
    );
  }
}
