import 'package:clinics/core/helpers/spacehelper.dart';
import 'package:clinics/core/theming/styles.dart';
import 'package:clinics/features/auth/ui/widgets/login/email_and_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wellcome Back",
                  style: TextStyles.font24BlueBold,
                ),
                verticalspace(8.0),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalspace(36),
                const Column(
                  children: [
                    EmailAndPassword(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
