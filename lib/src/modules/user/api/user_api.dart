import 'dart:convert';
import 'package:basic_structure/src/modules/user/model/user_model.dart';
import 'package:basic_structure/src/services/api_services.dart';

class UserApi {
  final ApiClient _apiClient;

  UserApi(this._apiClient);



  Future<List<UserModel>> getUserList() async {
    try {
      final response = await _apiClient.getData(
        url: 'https://jsonplaceholder.typicode.com/users',
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> jsonList = jsonDecode(response.body);
        return jsonList.map((json) => UserModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load users: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching user list: $e');
    }
  }
}
