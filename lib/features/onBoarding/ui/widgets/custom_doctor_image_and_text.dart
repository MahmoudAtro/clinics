import 'package:clinics/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDoctorImageAndText extends StatelessWidget {
  const CustomDoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/svgs/docdoc_logo_low_opacity.svg"),
        Container(
          child: Image.asset("assets/images/onboarding_doctor.png"),
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
        ),
        Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Text(
              "Best Doctor\nAppoitment App",
              style: TextStyles.font32BlueBold.copyWith(
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ))
      ],
    );
  }
}
