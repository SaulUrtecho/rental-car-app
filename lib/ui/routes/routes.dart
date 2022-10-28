import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/onboarding/intro/intro_screen.dart';
import 'package:rental_car_app/ui/onboarding/signin/signin_screen.dart';
import 'package:rental_car_app/ui/onboarding/signup/signup_screen.dart';

// create a enum called Routes
enum Routes {
  intro,
  signin,
  signup;

  static routes(BuildContext context) {
    return {
      Routes.intro.name: (context) => const IntroScreen(),
      Routes.signin.name: (context) => const SigninScreen(),
      Routes.signup.name: (context) => const SignupScreen(),
    };
  }
}
