class LostFoundItem {
  final String id;
  final String itemName;
  final String description;
  final String locationFound;
  final bool isClaimed;

  LostFoundItem({
    required this.id,
    required this.itemName,
    required this.description,
    required this.locationFound,
    required this.isClaimed,
  });
}
