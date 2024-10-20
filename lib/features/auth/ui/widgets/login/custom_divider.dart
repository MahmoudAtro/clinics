import 'package:clinics/core/theming/colors.dart';
import 'package:clinics/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: Divider(
            color: ColorsManager.gray,
          ),
        ),
        Text(
          "  Or Sign With  ",
          style: TextStyles.font12DarkBlueRegular,
        ),
        const Expanded(
          child: Divider(
            color: ColorsManager.gray,
          ),
        ),
      ],
    );
  }
}
