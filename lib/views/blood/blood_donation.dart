import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BloodDonation extends StatelessWidget {
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
