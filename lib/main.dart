import 'package:clinics/core/di/dependency_injection.dart';
import 'package:clinics/core/helpers/constant.dart';
import 'package:clinics/core/helpers/extensions.dart';
import 'package:clinics/core/helpers/shared_helpers.dart';
import 'package:clinics/core/routing/app_route.dart';
import 'package:clinics/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  await checkIfUserLogged();
  runApp(
    DocApp(
      appRoute: AppRoute(),
    ),
  );
}

checkIfUserLogged() async {
  String? userToken =
      await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
