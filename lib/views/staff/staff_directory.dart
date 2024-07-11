import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../models/staff_member.dart';

class StaffDirectory extends StatelessWidget {
  final List<StaffMember> staffMembers = [
    StaffMember(
      id: '1',
      name: 'Samuel Jackson',
      jobTitle: 'Security Guard',
      contactNumber: '+1122334455',
    ),
    StaffMember(
      id: '2',
      name: 'Emily Watson',
      jobTitle: 'Cleaner',
      contactNumber: '+9988776655',
    ),
    // Add more staff members as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staff Directory'),
      ),
      body: ListView.builder(
        itemCount: staffMembers.length,
        itemBuilder: (context, index) {
          var staff = staffMembers[index];
          return ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(staff.name),
            subtitle: Text(staff.jobTitle),
            onTap: () {
              // Implement action when tapping on staff member
              // Example: Get.to(() => StaffMemberProfile(staff));
            },
          );
        },
      ),
    );
  }
}
