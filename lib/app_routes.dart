import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/product_catalog_tab.dart';
import 'screens/registration_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/distribution_tracking_tab.dart';

class AppRoutes {
  static const String login = '/login';
  static const String register = '/register';
  static const String product = '/product';
  static const String dashboard = '/dashboard'; // Dashboard route
  static const String tracking = '/tracking'; // Tracking route

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case register:
        return MaterialPageRoute(builder: (_) => const RegistrationScreen());
      case product:
        return MaterialPageRoute(builder: (_) => const ProductCatalogTab());
      case dashboard:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      case tracking:
        return MaterialPageRoute(builder: (_) => const DistributionTrackingTab());
      default:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}
