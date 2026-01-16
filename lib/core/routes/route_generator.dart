import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/routes/routes.dart';
import 'package:food_delivery_app/features/auth/presentation/views/auth_view.dart';
import 'package:food_delivery_app/features/auth/presentation/views/login_view.dart';
import 'package:food_delivery_app/features/navigation_home/presentation/pages/navigation_home_view.dart';
import 'package:food_delivery_app/features/onboarding/onboarding_screen.dart';

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    // final arg = settings.arguments;
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case Routes.auth:
        return MaterialPageRoute(builder: (context) => const AuthView());
      case Routes.login:
        return MaterialPageRoute(builder: (context) => LoginView());
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => const NavigationHomeView(),
        );
      default:
        return _undefinedRoute();
    }
  }

  static Route<dynamic> _undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('No Route Found')),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
