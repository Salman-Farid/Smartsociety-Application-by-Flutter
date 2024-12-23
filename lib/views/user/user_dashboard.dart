import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Implement notification action
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Welcome, User!',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
              onTap: () {
                // Implement profile navigation
              },
            ),
            ListTile(
              leading: const Icon(Icons.event),
              title: const Text('Events'),
              onTap: () {
                Get.toNamed('/event-calendar');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Implement settings navigation
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                // Implement logout action
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'User Dashboard Content',
                style: TextStyle(fontSize: 24.0),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Get.snackbar('Button Pressed', 'User action performed');
                },
                child: const Text('Perform User Action'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.dialog(
            AlertDialog(
              title: const Text('User Dialog'),
              content: const Text('Do you want to perform this action?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    // Implement action here
                    Get.back();
                  },
                  child: const Text('Confirm'),
                ),
              ],
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
