import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/product_catalog_tab.dart';
import 'screens/distribution_tracking_tab.dart';
import 'screens/account_tab.dart';
import 'screens/orders_tab.dart'; // Ensure OrdersTab is imported

void main() {
  runApp(const PharmApp());
}

class PharmApp extends StatelessWidget {
  const PharmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serious Pharm Solutions', // App title
      theme: ThemeData(
        primarySwatch: Colors.blue, // Define a theme color
      ),
      initialRoute: '/login', // Set the initial route
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegistrationScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/product': (context) => const ProductCatalogTab(),
        '/orders': (context) => const OrdersTab(), // Correct route for OrdersTab
        '/tracking': (context) => const DistributionTrackingTab(), // Correct route for DistributionTrackingTab
        '/account': (context) => const AccountTab(),
      },
    );
  }
}
