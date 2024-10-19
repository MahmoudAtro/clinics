import 'package:clinics/core/routing/routes.dart';
import 'package:clinics/features/auth/ui/login_screen.dart';
import 'package:clinics/features/onBoarding/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route generateRoute(RouteSettings route) {
    switch (route.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No route define for ${route.name}"),
                  ),
                ));
    }
  }
}
