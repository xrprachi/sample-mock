class Info {
  int? page;
  int? results;
  String? seed;
  String? version;

  Info({this.page, this.results, this.seed, this.version});

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      page: json['page'],
      results: json['results'],
      seed: json['seed'],
      version: json['version'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['page'] = page;
    data['results'] = results;
    data['seed'] = seed;
    data['version'] = version;
    return data;
  }
}
