import '../../data/entity/user.dart';

abstract class UserRepository {
  Future<User> getUserData();
}
