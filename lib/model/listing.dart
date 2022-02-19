class Listing {
  int? id;
  String? thumbnail;
  String? name;
  double? distance;
  String? address;
  String? owner;
  String? propertyType;
  String? description;
  bool? suggested;
  bool? youMayLike;
  bool? reservation;
  bool? water;
  bool? onlyIndoors;
  bool? onlyOutdoors;
  bool? petsAllowed;
  bool? animalAttraction;
  bool? forHome;
  bool? overEighteen;
  bool? forEvents;
  String? contactNumber;
  List<Interior>? interior;

  Listing({
    this.id,
    this.thumbnail,
    this.name,
    this.distance,
    this.address,
    this.owner,
    this.propertyType,
    this.description,
    this.suggested,
    this.youMayLike,
    this.reservation,
    this.water,
    this.onlyIndoors,
    this.onlyOutdoors,
    this.petsAllowed,
    this.animalAttraction,
    this.forHome,
    this.overEighteen,
    this.forEvents,
    this.contactNumber,
    this.interior,
  });

  Listing.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    thumbnail = json['thumbnail'];
    name = json['name'];
    distance = json['distance'];
    address = json['address'];
    owner = json['owner'];
    propertyType = json['propertyType'];
    description = json['description'];
    suggested = json['suggested'];
    youMayLike = json['youMayLike'];
    reservation = json['reservation'];
    water = json['water'];
    onlyIndoors = json['onlyIndoors'];
    onlyOutdoors = json['onlyOutdoors'];
    petsAllowed = json['petsAllowed'];
    animalAttraction = json['animalAttraction'];
    forHome = json['forHome'];
    overEighteen = json['overEighteen'];
    forEvents = json['forEvents'];
    contactNumber = json['contactNumber'];
    if (json['interior'] != null) {
      interior = <Interior>[];
      json['interior'].forEach((v) {
        interior!.add(Interior.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['thumbnail'] = thumbnail;
    data['name'] = name;
    data['distance'] = distance;
    data['address'] = address;
    data['owner'] = owner;
    data['propertyType'] = propertyType;
    data['description'] = description;
    data['suggested'] = suggested;
    data['youMayLike'] = youMayLike;
    data['reservation'] = reservation;
    data['water'] = water;
    data['onlyIndoors'] = onlyIndoors;
    data['onlyOutdoors'] = onlyOutdoors;
    data['petsAllowed'] = petsAllowed;
    data['animalAttraction'] = animalAttraction;
    data['forHome'] = forHome;
    data['overEighteen'] = overEighteen;
    data['forEvents'] = forEvents;
    data['contactNumber'] = contactNumber;
    if (interior != null) {
      data['interior'] = interior!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Interior {
  int? imageId;
  String? image;

  Interior({this.imageId, this.image});

  Interior.fromJson(Map<String, dynamic> json) {
    imageId = json['imageId'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imageId'] = imageId;
    data['image'] = image;
    return data;
  }
}
