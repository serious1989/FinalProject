import 'package:flutter/material.dart';

class DistributionTrackingTab extends StatefulWidget {
  const DistributionTrackingTab({super.key});

  @override
  _DistributionTrackingTabState createState() => _DistributionTrackingTabState();
}

class _DistributionTrackingTabState extends State<DistributionTrackingTab> {
  final TextEditingController _trackingNumberController = TextEditingController();
  bool _isTracking = false;
  String? _trackingResult;

  void _trackDistribution() {
    if (_trackingNumberController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a tracking number')),
      );
      return;
    }

    setState(() {
      _isTracking = true;
    });

    // Simulate a delay for tracking process (e.g., network request)
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isTracking = false;
        // Example result after tracking
        _trackingResult = 'Your order is in transit and will arrive in 3 days.';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track Distribution'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Input field for tracking number
            TextField(
              controller: _trackingNumberController,
              style: const TextStyle(color: Colors.white), // Set text color to white
              decoration: InputDecoration(
                labelText: 'Enter Tracking Number',
                labelStyle: const TextStyle(color: Colors.white), // Set label color to white
                filled: true,
                fillColor: Colors.grey[800], // Set background color to grey
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none, // Remove border outline if needed
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Button to initiate tracking
            _isTracking
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: _trackDistribution,
                    child: const Text('Track'),
                  ),
            
            const SizedBox(height: 16),

            // Display tracking result
            if (_trackingResult != null) ...[
              Text(
                _trackingResult!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ],
        ),
      ),
      //backgroundColor: Colors.grey[900], // Set the background color to dark grey
    );
  }

  @override
  void dispose() {
    _trackingNumberController.dispose();
    super.dispose();
  }
}
