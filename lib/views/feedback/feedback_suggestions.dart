import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedbackSuggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback and Suggestions'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Feedback and Suggestions Content',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
