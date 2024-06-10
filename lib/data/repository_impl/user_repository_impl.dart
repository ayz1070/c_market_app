import 'package:flutter/foundation.dart';
import '../../data/entity/user.dart';
import '../../domain/repository/user_repository.dart';
import '../../data/data_source/user_remote_data_source.dart';


class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl({required this.remoteDataSource});

  @override
  Future<User> getUserData() async {
    final userModel = await remoteDataSource.getUserData();
    return User(
      username: userModel.username,
      email: userModel.email,
      profilePictureUrl: userModel.profilePictureUrl,
    );
  }
}
