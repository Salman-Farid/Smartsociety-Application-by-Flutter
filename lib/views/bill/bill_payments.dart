import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BillPayments extends StatelessWidget {
  const BillPayments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bill Payments'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Bill Payments Content',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
