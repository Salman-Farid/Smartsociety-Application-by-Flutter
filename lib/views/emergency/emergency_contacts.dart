import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmergencyContacts extends StatelessWidget {
  final List<Map<String, String>> emergencyNumbers = [
    {'name': 'Police', 'number': '100'},
    {'name': 'Fire Department', 'number': '101'},
    {'name': 'Medical Services', 'number': '102'},
    // Add more emergency contacts as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Contacts'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: emergencyNumbers.length,
          itemBuilder: (context, index) {
            var emergency = emergencyNumbers[index];
            return ListTile(
              title: Text(emergency['name']!),
              subtitle: Text(emergency['number']!),
              onTap: () {
                // Implement action for tapping on emergency contact
                // Example: launch('tel:${emergency['number']}');
              },
            );
          },
        ),
      ),
    );
  }
}
