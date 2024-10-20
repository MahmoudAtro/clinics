import 'package:clinics/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container signwith(String imagePath) => Container(
      width: 50.w,
      height: 50.h,
      padding: const EdgeInsets.all(3),
      child: Image.asset(
        imagePath,
      ),
      decoration: BoxDecoration(
        color: ColorsManager.lighterGray,
        borderRadius: BorderRadius.circular(8),
      ),
    );

