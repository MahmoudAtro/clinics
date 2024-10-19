import 'package:clinics/features/onBoarding/ui/widgets/custom_doctor_image_and_text.dart';
import 'package:clinics/features/onBoarding/ui/widgets/custom_doctor_logo.dart';
import 'package:clinics/features/onBoarding/ui/widgets/custom_text_and_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const CustomDoctorLogo(),
                SizedBox(
                  height: 30.h,
                ),
                const CustomDoctorImageAndText(),
                const CustomTextAndButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
