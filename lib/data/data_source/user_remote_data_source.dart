import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/user_model.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUserData();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final http.Client client;

  UserRemoteDataSourceImpl({required this.client});

  @override
  Future<UserModel> getUserData() async {
    final response = await client.get(Uri.parse('https://example.com/user'));

    if (response.statusCode == 200) {
      return UserModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load user data');
    }
  }
}
