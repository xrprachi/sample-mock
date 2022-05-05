import 'dart:convert';
import 'dart:developer';

import 'package:demo/api/api.dart';
import 'package:demo/modules/users/models/ApiExceptionModel.dart';
import 'package:demo/modules/users/models/UserListModel.dart';

class UserService {
  static Future<UserListModel> getUsers(int page) async {
    try {
      final result =
          await Api().get("", queryData: {"page": page, "results": 10});
      log('result :status ${result.statusCode} body ${result.body}');
      var body = jsonDecode(result.body);
      log('body : $body');
      if (result.statusCode == 200) {
        return UserListModel.fromJson(body);
      } else {
        var error = ApiExceptionModel.fromJson(body).error;
        throw Exception(error);
      }
    } catch (e, st) {
      log("try casctb : E $st");
      rethrow;
    }
  }
}
