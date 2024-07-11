import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FacilityBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facility Booking'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Facility Booking Content',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
