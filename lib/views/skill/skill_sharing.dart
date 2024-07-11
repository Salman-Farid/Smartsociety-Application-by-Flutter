import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SkillSharing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skill Sharing'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Skill Sharing Content',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
