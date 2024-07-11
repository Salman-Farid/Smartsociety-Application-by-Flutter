class StaffMember {
  final String id;
  final String name;
  final String jobTitle;
  final String contactNumber;

  StaffMember({
    required this.id,
    required this.name,
    required this.jobTitle,
    required this.contactNumber,
  });

  static fromMap(Map<String, dynamic> data, String id) {}
}
