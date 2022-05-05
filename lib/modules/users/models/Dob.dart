class Dob {
  int? age;
  String? date;

  Dob({this.age, this.date});

  factory Dob.fromJson(Map<String, dynamic> json) {
    return Dob(
      age: json['age'],
      date: json['date'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['age'] = age;
    data['date'] = date;
    return data;
  }
}
