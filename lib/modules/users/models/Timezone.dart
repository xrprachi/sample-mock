class Timezone {
  String? description;
  String? offset;

  Timezone({this.description, this.offset});

  factory Timezone.fromJson(Map<String, dynamic> json) {
    return Timezone(
      description: json['description'],
      offset: json['offset'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['offset'] = this.offset;
    return data;
  }
}
