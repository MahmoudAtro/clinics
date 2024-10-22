import 'package:clinics/core/di/dependency_injection.dart';
import 'package:clinics/core/routing/routes.dart';
import 'package:clinics/features/auth/logic/login_cubit/login_cubit.dart';
import 'package:clinics/features/auth/logic/signup_cubit/signup_cubit.dart';
import 'package:clinics/features/auth/ui/login_screen.dart';
import 'package:clinics/features/auth/ui/signup_screen.dart';
import 'package:clinics/features/home/ui/home_screen.dart';
import 'package:clinics/features/onBoarding/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoute {
  Route generateRoute(RouteSettings route) {
    // this argument to be passed in any screen like this
    // final argument = route.arguments;
    switch (route.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getit<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
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
