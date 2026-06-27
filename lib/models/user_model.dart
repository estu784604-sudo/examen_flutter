class UserModel {
  final String name;
  final String email;
  final String thumbnail;

  UserModel({required this.name, required this.email, required this.thumbnail});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: '${json['name']['first']} ${json['name']['last']}',
      email: json['email'] ?? '',
      thumbnail: json['picture']['thumbnail'] ?? '',
    );
  }
}