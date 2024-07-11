import 'package:flutter/material.dart';

import '../../models/resident.dart';


class ResidentTile extends StatelessWidget {
  final Resident resident;

  ResidentTile(this.resident);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(resident.name),
      subtitle: Text(resident.contactNumber),
    );
  }
}
