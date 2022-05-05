class Street {
  String? name;
  int? number;

  Street({this.name, this.number});

  factory Street.fromJson(Map<String, dynamic> json) {
    return Street(
      name: json['name'],
      number: json['number'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['number'] = number;
    return data;
  }
}
