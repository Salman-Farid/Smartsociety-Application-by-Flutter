import 'package:flutter/material.dart';

class MentalHealthSupport extends StatelessWidget {
  const MentalHealthSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mental Health Support'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Mental Health Support Content',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
