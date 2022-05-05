class Login {
  String? md5;
  String? password;
  String? salt;
  String? sha1;
  String? sha256;
  String? username;
  String? uuid;

  Login(
      {this.md5,
      this.password,
      this.salt,
      this.sha1,
      this.sha256,
      this.username,
      this.uuid});

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      md5: json['md5'],
      password: json['password'],
      salt: json['salt'],
      sha1: json['sha1'],
      sha256: json['sha256'],
      username: json['username'],
      uuid: json['uuid'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['md5'] = md5;
    data['password'] = password;
    data['salt'] = salt;
    data['sha1'] = sha1;
    data['sha256'] = sha256;
    data['username'] = username;
    data['uuid'] = uuid;
    return data;
  }
}
