import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventCalendar extends StatelessWidget {
  const EventCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Calendar'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Event Calendar Content',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
