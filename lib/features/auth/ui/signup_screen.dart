import 'package:clinics/core/helpers/spacehelper.dart';
import 'package:clinics/features/auth/logic/signup_cubit/signup_cubit.dart';
import 'package:clinics/features/auth/ui/widgets/login/terms_and_condition.dart';
import 'package:clinics/features/auth/ui/widgets/signup/already_have_account.dart';
import 'package:clinics/features/auth/ui/widgets/signup/signup_bloc_listiner.dart';
import 'package:clinics/features/auth/ui/widgets/signup/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                  'Create Account',
                  style: TextStyles.font24BlueBold,
                ),
                verticalspace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalspace(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalspace(40),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalspace(16),
                    const TermsAndConditionsText(),
                    verticalspace(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListiner(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().keyForm.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}