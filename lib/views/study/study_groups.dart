import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudyGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study Groups'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Study Groups Content',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
