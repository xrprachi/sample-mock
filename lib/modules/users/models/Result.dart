import 'package:demo/modules/users/models/Dob.dart';
import 'package:demo/modules/users/models/Id.dart';
import 'package:demo/modules/users/models/Location.dart';
import 'package:demo/modules/users/models/Login.dart';
import 'package:demo/modules/users/models/Name.dart';
import 'package:demo/modules/users/models/Picture.dart';
import 'package:demo/modules/users/models/Registered.dart';

class Result {
  String? cell;
  Dob? dob;
  String? email;
  String? gender;
  Id? id;
  Location? location;
  Login? login;
  Name? name;
  String? nat;
  String? phone;
  Picture? picture;
  Registered? registered;

  Result(
      {this.cell,
      this.dob,
      this.email,
      this.gender,
      this.id,
      this.location,
      this.login,
      this.name,
      this.nat,
      this.phone,
      this.picture,
      this.registered});

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      cell: json['cell'],
      dob: json['dob'] != null ? Dob.fromJson(json['dob']) : null,
      email: json['email'],
      gender: json['gender'],
      id: json['id'] != null ? Id.fromJson(json['id']) : null,
      location:
          json['location'] != null ? Location.fromJson(json['location']) : null,
      login: json['login'] != null ? Login.fromJson(json['login']) : null,
      name: json['name'] != null ? Name.fromJson(json['name']) : null,
      nat: json['nat'],
      phone: json['phone'],
      picture:
          json['picture'] != null ? Picture.fromJson(json['picture']) : null,
      registered: json['registered'] != null
          ? Registered.fromJson(json['registered'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cell'] = cell;
    data['email'] = email;
    data['gender'] = gender;
    data['nat'] = nat;
    data['phone'] = phone;
    if (dob != null) {
      data['dob'] = dob?.toJson();
    }
    if (id != null) {
      data['id'] = id?.toJson();
    }
    if (location != null) {
      data['location'] = location?.toJson();
    }
    if (login != null) {
      data['login'] = login?.toJson();
    }
    if (name != null) {
      data['name'] = name?.toJson();
    }
    if (picture != null) {
      data['picture'] = picture?.toJson();
    }
    if (registered != null) {
      data['registered'] = registered?.toJson();
    }
    return data;
  }
}
