import 'package:flutter/material.dart';
import 'package:war_house/features/auth/presentation/views/login_view.dart';
import 'package:war_house/features/auth/presentation/views/signup_view.dart';
import 'package:war_house/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );
    case SignupView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SignupView(),
      );
    case LoginView.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginView(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );
  }
}
