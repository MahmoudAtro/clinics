import 'package:clinics/core/helpers/spacehelper.dart';
import 'package:clinics/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:clinics/features/home/ui/widgets/doctor_special_see.dart';
import 'package:clinics/features/home/ui/widgets/home_bloc_listner.dart';
import 'package:clinics/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorBlueContainer(),
              verticalspace(24.h),
              const DoctorSpecialSee(),
              verticalspace(16),
              const HomeBlocListner(),
            ],
          ),
        ),
      ),
    );
  }
}
