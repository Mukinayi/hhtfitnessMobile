import 'offertype.dart';

class Offer {
  Offer({
    this.id,
    this.offer,
    this.offerType,
  });

  int id;
  String offer;
  OfferType offerType;

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
    id: json["id"],
    offer: json["offer"],
    offerType: OfferType.fromJson(json["offerType"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "offer": offer,
    "offerType": offerType.toJson(),
  };
}