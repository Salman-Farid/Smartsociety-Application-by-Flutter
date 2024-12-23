class UserModel {
  final String id;
  final String email;
  final String name;
  final String? phoneNumber;
  final String? apartmentNumber;
  final String role;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    this.phoneNumber,
    this.apartmentNumber,
    this.role = 'resident',
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? '',
      email: json['email'] ?? '',
      name: json['name'] ?? '',
      phoneNumber: json['phoneNumber'],
      apartmentNumber: json['apartmentNumber'],
      role: json['role'] ?? 'resident',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'phoneNumber': phoneNumber,
      'apartmentNumber': apartmentNumber,
      'role': role,
    };
  }
} 