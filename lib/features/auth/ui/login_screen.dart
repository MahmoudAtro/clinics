import 'package:clinics/core/helpers/spacehelper.dart';
import 'package:clinics/core/theming/styles.dart';
import 'package:clinics/core/widgets/app_text_button.dart';
import 'package:clinics/features/auth/logic/login_cubit/login_cubit.dart';
import 'package:clinics/features/auth/ui/widgets/login/custom_divider.dart';
import 'package:clinics/features/auth/ui/widgets/login/custom_signin_with.dart';
import 'package:clinics/features/auth/ui/widgets/login/dont_have_account.dart';
import 'package:clinics/features/auth/ui/widgets/login/email_and_password.dart';
import 'package:clinics/features/auth/ui/widgets/login/login_bloc_listner.dart';
import 'package:clinics/features/auth/ui/widgets/login/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalspace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalspace(40),
                    AppTextButton(
                      buttonText: "Login",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    verticalspace(16),
                    const CustomDivider(),
                    verticalspace(16),
                    const CustomSigninWith(),
                    verticalspace(16),
                    const TermsAndConditionsText(),
                    verticalspace(60),
                    const DontHaveAccountText(),
                    const LoginBlocListner(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().keyForm.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
