import '../../data/entity/user.dart';
import '../repository/user_repository.dart';

class GetUserData {
  final UserRepository repository;

  GetUserData(this.repository);

  Future<User> call() async {
    return await repository.getUserData();
  }
}
