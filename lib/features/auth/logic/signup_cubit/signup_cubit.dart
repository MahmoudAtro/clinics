import 'package:clinics/features/auth/data/models/signup_request_body.dart';
import 'package:clinics/features/auth/data/repos/signup_repo.dart';
import 'package:clinics/features/auth/logic/signup_cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final keyForm = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignupState.loading());
    final response = await _signupRepo.signup(SignupRequestBody(
      email: emailController.text,
      password: passwordController.text,
      phone: phoneController.text,
      name: nameController.text,
      passwordCofirmation: passwordConfirmationController.text,
      gender: 0,
    ));

    response.when(success: (signupResponse) {
      emit(SignupState.success(signupResponse));
    }, failure: (error) {
      emit(SignupState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
