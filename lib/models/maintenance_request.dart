class MaintenanceRequest {
  final String id;
  final String description;
  final DateTime requestDate;
  final bool isResolved;

  MaintenanceRequest({
    required this.id,
    required this.description,
    required this.requestDate,
    required this.isResolved,
  });
}
