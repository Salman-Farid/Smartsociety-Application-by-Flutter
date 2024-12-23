import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MaintenanceRequests extends StatelessWidget {
  const MaintenanceRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maintenance Requests'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Maintenance Requests Content',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
