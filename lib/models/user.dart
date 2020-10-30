import 'package:HHTFITNESS/models/role.dart';

class User {
  User({
    this.id,
    this.firstname,
    this.lastname,
    this.email,
    this.isactive,
    this.password,
    this.roles,
  });

  int id;
  String firstname;
  String lastname;
  String email;
  String isactive;
  String password;
  List<Role> roles;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    firstname: json["firstname"],
    lastname: json["lastname"],
    email: json["email"],
    isactive: json["isactive"],
    password: json["password"],
    roles: List<Role>.from(json["roles"].map((x) => Role.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "firstname": firstname,
    "lastname": lastname,
    "email": email,
    "isactive": isactive,
    "password": password,
    "roles": List<dynamic>.from(roles.map((x) => x.toJson())),
  };
}