import 'package:clinics/core/routing/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRoute appRoute;
  const DocApp({super.key, required this.appRoute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: "Doc App",
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRoute.generateRoute,
      ),
    );
  }
}