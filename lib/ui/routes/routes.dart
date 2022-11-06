import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/app_view/app_view.dart';
import 'package:rental_car_app/ui/home_screens/notifications/notifications_screen.dart';
import 'package:rental_car_app/ui/onboarding/intro/intro_screen.dart';
import 'package:rental_car_app/ui/onboarding/signin/signin_screen.dart';
import 'package:rental_car_app/ui/onboarding/signup/signup_screen.dart';
import 'package:rental_car_app/ui/onboarding/verify/verify_screen.dart';

// create a enum called Routes
enum Routes {
  intro,
  signin,
  signup,
  verify,
  appView,
  notifications;

  static Map<String, Widget Function(BuildContext context)> routes(BuildContext context) {
    return {
      Routes.intro.name: (context) => const IntroScreen(),
      Routes.signin.name: (context) => const SigninScreen(),
      Routes.signup.name: (context) => const SignupScreen(),
      Routes.verify.name: (context) => const VerifyScreen(),
      Routes.appView.name: (context) => const AppView(),
      Routes.notifications.name: (context) => const NotificationsScreen(),
    };
  }
}
