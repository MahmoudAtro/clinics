import 'package:clinics/core/helpers/spacehelper.dart';
import 'package:clinics/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 165.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/home_blue_pattern.png",
                  ),
                )),
                child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Book and\nSchedule with\nnearest doctors",
                style: TextStyles.font18WhiteMedium,
                textAlign: TextAlign.start,
              ),
              verticalspace(16),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                  child: Text(
                    "Find Nearby",
                    style: TextStyles.font12BlueRegular,
                  ),
                ),
              ),
            ],
          ),
          ),
          
          Positioned(
              top: 0,
              right: 8.w,
              child: Image.asset(
                "assets/images/dochome.png",
                height: 200.h,
              ))
        ],
      ),
    );
  }
}
