import 'package:demo/modules/users/models/Info.dart';
import 'package:demo/modules/users/models/Result.dart';

class UserListModel {
  Info? info;
  List<Result>? results;

  UserListModel({this.info, this.results});

  factory UserListModel.fromJson(Map<String, dynamic> json) {
    return UserListModel(
      info: json['info'] != null ? Info.fromJson(json['info']) : null,
      results: json['results'] != null
          ? (json['results'] as List).map((i) => Result.fromJson(i)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (info != null) {
      data['info'] = info?.toJson();
    }
    if (results != null) {
      data['results'] = results?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
