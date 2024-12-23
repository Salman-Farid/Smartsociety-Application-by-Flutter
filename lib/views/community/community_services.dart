import 'package:flutter/material.dart';

class CommunityServices extends StatelessWidget {
  const CommunityServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community Services'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Community Services Content',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
