import 'package:flutter/material.dart';

import '../../models/resident.dart';


class ResidentTile extends StatelessWidget {
  final Resident resident;

  const ResidentTile(this.resident, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(resident.name),
      subtitle: Text(resident.contactNumber),
    );
  }
}
