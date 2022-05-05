class ApiExceptionModel {
  String? error;

  ApiExceptionModel({this.error});

  factory ApiExceptionModel.fromJson(Map<String, dynamic> json) {
    return ApiExceptionModel(
      error: json['error'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['error'] = error;
    return data;
  }
}
