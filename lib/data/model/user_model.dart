import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String username;
  final String email;
  final String profilePictureUrl;

  const UserModel({
    required this.username,
    required this.email,
    required this.profilePictureUrl,
  });

  @override
  List<Object?> get props => [username, email, profilePictureUrl];

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      username: json['username'],
      email: json['email'],
      profilePictureUrl: json['profile_picture_url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'profile_picture_url': profilePictureUrl,
    };
  }
}
