class Role {
  Role({
    this.id,
    this.role,
  });

  int id;
  String role;

  factory Role.fromJson(Map<String, dynamic> json) => Role(
    id: json["id"],
    role: json["role"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "role": role,
  };
}