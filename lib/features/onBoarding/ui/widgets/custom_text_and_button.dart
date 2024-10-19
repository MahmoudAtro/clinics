import 'package:clinics/core/theming/colors.dart';
import 'package:clinics/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextAndButton extends StatelessWidget {
  const CustomTextAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          Text(
            "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
            style: TextStyles.font13GrayRegular,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30.h,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Get Strted",
              style: TextStyles.font16WhiteMedium,
            ),
            style: ButtonStyle(
              backgroundColor: const WidgetStatePropertyAll(ColorsManager.mainBlue),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize: const WidgetStatePropertyAll(
                Size(double.infinity, 52),
              ),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
