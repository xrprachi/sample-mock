class Name {
  String? first;
  String? last;
  String? title;

  Name({this.first, this.last, this.title});

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      first: json['first'],
      last: json['last'],
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first'] = first;
    data['last'] = last;
    data['title'] = title;
    return data;
  }
}
