import 'package:demo/modules/users/models/Coordinates.dart';
import 'package:demo/modules/users/models/Street.dart';
import 'package:demo/modules/users/models/Timezone.dart';

class Location {
  String? city;
  Coordinates? coordinates;
  String? country;
  String? postcode;
  String? state;
  Street? street;
  Timezone? timezone;

  Location(
      {this.city,
      this.coordinates,
      this.country,
      this.postcode,
      this.state,
      this.street,
      this.timezone});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      city: json['city'],
      coordinates: json['coordinates'] != null
          ? Coordinates.fromJson(json['coordinates'])
          : null,
      country: json['country'],
      postcode: json['postcode'].toString(),
      state: json['state'],
      street: json['street'] != null ? Street.fromJson(json['street']) : null,
      timezone:
          json['timezone'] != null ? Timezone.fromJson(json['timezone']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['city'] = city;
    data['country'] = country;
    data['postcode'] = postcode;
    data['state'] = state;
    if (coordinates != null) {
      data['coordinates'] = coordinates?.toJson();
    }
    if (street != null) {
      data['street'] = street?.toJson();
    }
    if (timezone != null) {
      data['timezone'] = timezone?.toJson();
    }
    return data;
  }
}
