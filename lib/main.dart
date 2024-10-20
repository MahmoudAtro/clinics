import 'package:clinics/core/di/dependency_injection.dart';
import 'package:clinics/core/routing/app_route.dart';
import 'package:clinics/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(
    DocApp(
      appRoute: AppRoute(),
    ),
  );
}
