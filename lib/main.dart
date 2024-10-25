import 'package:clinics/core/di/dependency_injection.dart';
import 'package:clinics/core/routing/app_route.dart';
import 'package:clinics/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  runApp(
    DocApp(
      appRoute: AppRoute(),
    ),
  );
}
