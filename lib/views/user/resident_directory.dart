import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/resident.dart';


class ResidentDirectory extends StatelessWidget {
  final List<Resident> residents = [
    Resident(
      id: '1',
      name: 'Alice Johnson',
      contactNumber: '+1122334455',
      profileImageUrl: 'assets/images/profile3.png',
    ),
    Resident(
      id: '2',
      name: 'Bob Brown',
      contactNumber: '+9988776655',
      profileImageUrl: 'assets/images/profile4.png',
    ),
    // Add more residents as needed
  ];

   ResidentDirectory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resident Directory'),
      ),
      body: ListView.builder(
        itemCount: residents.length,
        itemBuilder: (context, index) {
          var resident = residents[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(resident.profileImageUrl),
            ),
            title: Text(resident.name),
            subtitle: Text(resident.contactNumber),
            onTap: () {
              // Implement action when tapping on resident
              // Example: Get.to(() => ResidentProfile(resident));
            },
          );
        },
      ),
    );
  }
}
