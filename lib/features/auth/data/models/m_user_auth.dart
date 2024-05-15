class UserAuthModel {
  String? email;
  String? password;
  String? fullName;

  UserAuthModel({this.email, this.password});

  void setEmail(String? value) => email = value;
  void setPass(String? value) => password = value;
  void setFullName(String? value) => fullName = value;
}
