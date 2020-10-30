import 'elementtype.dart';
import 'offer.dart';

class Element {
  Element({
    this.id,
    this.element,
    this.elementType,
    this.elementUrl,
    this.offers,
  });

  int id;
  String element;
  ElementType elementType;
  String elementUrl;
  List<Offer> offers;

  factory Element.fromJson(Map<String, dynamic> json) => Element(
    id: json["id"],
    element: json["element"],
    elementType: ElementType.fromJson(json["elementType"]),
    elementUrl: json["elementUrl"],
    offers: List<Offer>.from(json["offers"].map((x) => Offer.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "element": element,
    "elementType": elementType.toJson(),
    "elementUrl": elementUrl,
    "offers": List<dynamic>.from(offers.map((x) => x.toJson())),
  };
}