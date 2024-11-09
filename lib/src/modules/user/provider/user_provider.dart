import 'dart:async';
import 'package:basic_structure/src/modules/user/api/user_api.dart';
import 'package:basic_structure/src/modules/user/model/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncUserNotifier extends AsyncNotifier<List<UserModel>> {
  Future<List<UserModel>> getUser() async {
    return await getUserList() ?? [UserModel.defaultUser()];
  }

  @override
  Future<List<UserModel>> build() async {
    return await getUser();
  }
}

final asyncUserProvider = AsyncNotifierProvider<AsyncUserNotifier, List<UserModel>>(
        () => AsyncUserNotifier());
