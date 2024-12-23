import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoticeBoard extends StatelessWidget {
  const NoticeBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notice Board'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Notice Board Content',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
