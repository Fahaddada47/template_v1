import 'dart:convert';
import 'package:basic_structure/src/modules/user/model/user_model.dart';
import 'package:basic_structure/src/services/api_services.dart';

Future<List<UserModel>?> getUserList() async {
  try {
    var response = await ApiClient().getData(url: 'https://jsonplaceholder.typicode.com/users');

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((json) => UserModel.fromJson(json)).toList();
    }
  } catch (e) {
    print('Error fetching user list: $e');
  }
  return null;
}
