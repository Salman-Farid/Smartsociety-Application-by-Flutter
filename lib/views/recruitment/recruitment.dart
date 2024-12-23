import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Recruitment extends StatelessWidget {
  const Recruitment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recruitment'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Recruitment Content',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
