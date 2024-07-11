class StudyGroup {
  final String id;
  final String groupName;
  final List<String> members;
  final DateTime startDate;
  final String description;

  StudyGroup({
    required this.id,
    required this.groupName,
    required this.members,
    required this.startDate,
    required this.description,
  });
}
