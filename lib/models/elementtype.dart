class ElementType {
  ElementType({
    this.id,
    this.type,
  });

  int id;
  String type;

  factory ElementType.fromJson(Map<String, dynamic> json) => ElementType(
    id: json["id"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
  };
}