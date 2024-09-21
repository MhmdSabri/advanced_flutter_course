import 'package:advanced_flutter_course/core/routing/routes.dart';
import 'package:advanced_flutter_course/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../../features/login/ui/login_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defind for ${settings.name}'),
                  ),
                ));
    }
  }
}
