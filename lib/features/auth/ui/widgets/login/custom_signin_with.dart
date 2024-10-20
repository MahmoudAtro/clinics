import 'package:clinics/core/widgets/sign_in_with.dart';
import 'package:flutter/material.dart';

class CustomSigninWith extends StatelessWidget {
  const CustomSigninWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        signwith("assets/images/google.png"),
        signwith("assets/images/facebook.png"),
        signwith("assets/images/apple.png"),
      ],
    );
  }
}