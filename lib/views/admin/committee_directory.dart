import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartsociety/models/committee_member.dart';

class CommitteeDirectory extends StatelessWidget {
  final List<CommitteeMember> committeeMembers = [
    CommitteeMember(
      id: '1',
      name: 'John Doe',
      role: 'President',
      contact: '+1234567890',
      imageUrl: 'assets/images/profile1.png',
    ),
    CommitteeMember(
      id: '2',
      name: 'Jane Smith',
      role: 'Secretary',
      contact: '+9876543210',
      imageUrl: 'assets/images/profile2.png',
    ),
    // Add more committee members as needed
  ];

  const CommitteeDirectory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Committee Directory'),
      ),
      body: ListView.builder(
        itemCount: committeeMembers.length,
        itemBuilder: (context, index) {
          var member = committeeMembers[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(member.imageUrl),
            ),
            title: Text(member.name),
            subtitle: Text(member.role),
            onTap: () {
              // Implement action when tapping on committee member
              // Example: Get.to(() => CommitteeMemberProfile(member));
            },
          );
        },
      ),
    );
  }
}
