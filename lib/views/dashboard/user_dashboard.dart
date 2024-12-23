import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/auth_controller.dart';

class UserDashboard extends StatelessWidget {
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => authController.signOut(),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        children: [
          _buildFeatureCard(
            'Maintenance',
            Icons.build,
            () => Get.toNamed('/maintenance'),
          ),
          _buildFeatureCard(
            'Events',
            Icons.event,
            () => Get.toNamed('/events'),
          ),
          _buildFeatureCard(
            'Facilities',
            Icons.sports_tennis,
            () => Get.toNamed('/facilities'),
          ),
          _buildFeatureCard(
            'Notice Board',
            Icons.announcement,
            () => Get.toNamed('/notices'),
          ),
          _buildFeatureCard(
            'Emergency',
            Icons.emergency,
            () => Get.toNamed('/emergency'),
          ),
          _buildFeatureCard(
            'Directory',
            Icons.contact_phone,
            () => Get.toNamed('/directory'),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard(String title, IconData icon, VoidCallback onTap) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48),
            SizedBox(height: 8),
            Text(title, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
} 