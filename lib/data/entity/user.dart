import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String username;
  final String email;
  final String profilePictureUrl;

  const User({
    required this.username,
    required this.email,
    required this.profilePictureUrl,
  });

  @override
  List<Object?> get props => [username, email, profilePictureUrl];
}
