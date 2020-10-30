class OfferType {
  OfferType({
    this.id,
    this.offertype,
  });

  int id;
  String offertype;

  factory OfferType.fromJson(Map<String, dynamic> json) => OfferType(
    id: json["id"],
    offertype: json["offertype"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "offertype": offertype,
  };
}