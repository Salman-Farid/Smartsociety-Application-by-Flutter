import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HouseRent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('House Rent'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'House Rent Content',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
