import 'package:flutter/material.dart';
import 'product_catalog_tab.dart';
import 'distribution_tracking_tab.dart';
import 'account_tab.dart';
import 'orders_tab.dart'; // Ensure OrdersTab is imported

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  // List of widget options for each tab
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeTab(),
    const ProductCatalogTab(),
    const OrdersTab(), // Correct tab reference for OrdersTab
    const DistributionTrackingTab(), // Correct tab reference for DistributionTrackingTab
    const AccountTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      //backgroundColor: Colors.grey[900], // Set the background color to dark grey
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping),
            label: 'Tracking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.redAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Placeholder widget for HomeTab
class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to PharmApp'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome to PharmApp!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'PharmApp is your comprehensive solution for managing pharmacy products, '
              'tracking orders, and staying on top of distribution. Our user-friendly '
              'interface helps you streamline the ordering process, monitor inventory, '
              'and track the distribution of medical supplies.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Get started by exploring the product catalog, placing an order, or checking '
              'your account for updates.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
