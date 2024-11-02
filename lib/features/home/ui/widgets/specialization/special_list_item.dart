import 'package:clinics/core/helpers/spacehelper.dart';
import 'package:clinics/core/theming/colors.dart';
import 'package:clinics/core/theming/styles.dart';
import 'package:clinics/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecialListItem extends StatelessWidget {
  final int itemIndex;
  final SpecializationsData? specializationsData;
  final int selectedIndex;
  const SpecialListItem({
    super.key,
    required this.itemIndex,
    required this.specializationsData,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 24.w : 24.w,
      ),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsManager.darkBlue,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundColor: ColorsManager.lightBlue,
                    radius: 28,
                    child: SvgPicture.asset(
                      "assets/svgs/general_speciality.svg",
                      height: 42.h,
                      width: 42.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  backgroundColor: ColorsManager.lightBlue,
                  radius: 28,
                  child: SvgPicture.asset(
                    "assets/svgs/general_speciality.svg",
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
          verticalspace(8),
          Text(
            specializationsData?.name ?? "Specialization",
            style: itemIndex == selectedIndex
                ? TextStyles.font14DarkBlueBold
                : TextStyles.font12DarkBlueRegular,
          )
        ],
      ),
    );
  }
}
