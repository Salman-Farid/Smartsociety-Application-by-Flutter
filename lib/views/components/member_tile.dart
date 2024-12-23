import 'package:flutter/material.dart';


import '../../models/committee_member.dart';

class MemberTile extends StatelessWidget {
  final CommitteeMember member;

  const MemberTile(this.member, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(member.name),
      subtitle: Text(member.role),
      trailing: Text(member.contact),
    );
  }
}
