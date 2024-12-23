import 'package:flutter/material.dart';

class BloodDonation extends StatelessWidget {
  const BloodDonation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Donation & Health Camps'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Blood Donation & Health Camps Content',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
