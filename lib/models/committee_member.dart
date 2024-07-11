class CommitteeMember {
  final String id;
  final String name;
  final String role;
  final String contact;
  final String imageUrl;

  CommitteeMember({required this.id, required this.name, required this.role, required this.contact,required this.imageUrl});

  factory CommitteeMember.fromMap(Map<String, dynamic> data, String documentId) {
    return CommitteeMember(
      id: documentId,
      name: data['name'] ?? '',
      role: data['role'] ?? '',
      contact: data['contact'] ?? '',
        imageUrl:data['imageUrl'],

    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'role': role,
      'contactNumber': contact,
    };
  }
}
