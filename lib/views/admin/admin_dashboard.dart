import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'committee_directory.dart';


class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Implement notification action
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Welcome, Admin!',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Committee Directory'),
              onTap: () {
                Get.to(() => CommitteeDirectory());
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Resident Directory'),
              onTap: () {
                Get.toNamed('/resident-directory');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Implement settings navigation
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Implement logout action
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Admin Dashboard Content',
                style: TextStyle(fontSize: 24.0),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Get.snackbar('Button Pressed', 'Admin action performed');
                },
                child: Text('Perform Admin Action'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.dialog(
            AlertDialog(
              title: Text('Admin Dialog'),
              content: Text('Do you want to perform this action?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    // Implement action here
                    Get.back();
                  },
                  child: Text('Confirm'),
                ),
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
