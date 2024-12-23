import 'package:flutter/material.dart';

class FacilityBooking extends StatelessWidget {
  const FacilityBooking({super.key});

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
