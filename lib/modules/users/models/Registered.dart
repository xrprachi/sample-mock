class Registered {
  int? age;
  String? date;

  Registered({this.age, this.date});

  factory Registered.fromJson(Map<String, dynamic> json) {
    return Registered(
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
