class SaleOldHouse {
  String id;
  String cityId;
  String districtId;
  Location location;
  String thumbnail;
  List<String> images;
  String subject;
  String title;
  String description;
  bool showContactInfo;
  bool canChat;
  bool sendToAgencyAndConsultUser;
  int totalPrice;
  int landMeterage;
  int landLength;
  int landWidth;
  String buildingType;
  int buildingMeterage;
  bool saleAsInstallment;
  int prepaymentPercent;
  int prepayment;
  int installmentAmount;
  String installmentNumber;
  String installmentPaybackTime;
  String installmentPledge;
  String age;
  String room;
  bool hasGarage;
  bool hasStoreHouse;
  String docType;
  String villaTotalFloors;
  String buildingSide;
  String reconstruct;
  String flooringMaterialType;
  String cabinetType;
  String wc;
  String coolingSystemType;
  String heatingSystemType;
  String heatWaterSystemType;
  bool hasCentralAnthena;
  bool hasConferenceHall;
  bool hasBathTub;
  bool hasMasterRoom;
  bool hasBalcony;
  bool hasGazebo;
  bool hasSwimmingPool;
  bool hasRoofGarden;
  bool hasLobby;
  bool hasGamingRoom;
  bool hasSportingHall;
  bool hasSaunaJacuzzi;

  SaleOldHouse({
    required this.id,
    required this.cityId,
    required this.districtId,
    required this.location,
    required this.thumbnail,
    required this.images,
    required this.subject,
    required this.title,
    required this.description,
    required this.showContactInfo,
    required this.canChat,
    required this.sendToAgencyAndConsultUser,
    required this.totalPrice,
    required this.landMeterage,
    required this.landLength,
    required this.landWidth,
    required this.buildingType,
    required this.buildingMeterage,
    required this.saleAsInstallment,
    required this.prepaymentPercent,
    required this.prepayment,
    required this.installmentAmount,
    required this.installmentNumber,
    required this.installmentPaybackTime,
    required this.installmentPledge,
    required this.age,
    required this.room,
    required this.hasGarage,
    required this.hasStoreHouse,
    required this.docType,
    required this.villaTotalFloors,
    required this.buildingSide,
    required this.reconstruct,
    required this.flooringMaterialType,
    required this.cabinetType,
    required this.wc,
    required this.coolingSystemType,
    required this.heatingSystemType,
    required this.heatWaterSystemType,
    required this.hasCentralAnthena,
    required this.hasConferenceHall,
    required this.hasBathTub,
    required this.hasMasterRoom,
    required this.hasBalcony,
    required this.hasGazebo,
    required this.hasSwimmingPool,
    required this.hasRoofGarden,
    required this.hasLobby,
    required this.hasGamingRoom,
    required this.hasSportingHall,
    required this.hasSaunaJacuzzi,
  });

  factory SaleOldHouse.fromJson(Map<String, dynamic> json) {
    return SaleOldHouse(
      id: json['id'],
      cityId: json['cityId'],
      districtId: json['districtId'],
      location: Location.fromJson(json['location']),
      thumbnail: json['thumbnail'],
      images: List<String>.from(json['images']),
      subject: json['subject'],
      title: json['title'],
      description: json['description'],
      showContactInfo: json['showContactInfo'],
      canChat: json['canChat'],
      sendToAgencyAndConsultUser: json['sendToAgencyAndConsultUser'],
      totalPrice: json['totalPrice'],
      landMeterage: json['landMeterage'],
      landLength: json['landLength'],
      landWidth: json['landWidth'],
      buildingType: json['buildingType'],
      buildingMeterage: json['buildingMeterage'],
      saleAsInstallment: json['saleAsInstallment'],
      prepaymentPercent: json['prepaymentPercent'],
      prepayment: json['prepayment'],
      installmentAmount: json['installmentAmount'],
      installmentNumber: json['installmentNumber'],
      installmentPaybackTime: json['installmentPaybackTime'],
      installmentPledge: json['installmentPledge'],
      age: json['age'],
      room: json['room'],
      hasGarage: json['hasGarage'],
      hasStoreHouse: json['hasStoreHouse'],
      docType: json['docType'],
      villaTotalFloors: json['villaTotalFloors'],
      buildingSide: json['buildingSide'],
      reconstruct: json['reconstruct'],
      flooringMaterialType: json['flooringMaterialType'],
      cabinetType: json['cabinetType'],
      wc: json['wc'],
      coolingSystemType: json['coolingSystemType'],
      heatingSystemType: json['heatingSystemType'],
      heatWaterSystemType: json['heatWaterSystemType'],
      hasCentralAnthena: json['hasCentralAnthena'],
      hasConferenceHall: json['hasConferenceHall'],
      hasBathTub: json['hasBathTub'],
      hasMasterRoom: json['hasMasterRoom'],
      hasBalcony: json['hasBalcony'],
      hasGazebo: json['hasGazebo'],
      hasSwimmingPool: json['hasSwimmingPool'],
      hasRoofGarden: json['hasRoofGarden'],
      hasLobby: json['hasLobby'],
      hasGamingRoom: json['hasGamingRoom'],
      hasSportingHall: json['hasSportingHall'],
      hasSaunaJacuzzi: json['hasSaunaJacuzzi'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cityId': cityId,
      'districtId': districtId,
      'location': location.toJson(),
      'thumbnail': thumbnail,
      'images': images,
      'subject': subject,
      'title': title,
      'description': description,
      'showContactInfo': showContactInfo,
      'canChat': canChat,
      'sendToAgencyAndConsultUser': sendToAgencyAndConsultUser,
      'totalPrice': totalPrice,
      'landMeterage': landMeterage,
      'landLength': landLength,
      'landWidth': landWidth,
      'buildingType': buildingType,
      'buildingMeterage': buildingMeterage,
      'saleAsInstallment': saleAsInstallment,
      'prepaymentPercent': prepaymentPercent,
      'prepayment': prepayment,
      'installmentAmount': installmentAmount,
      'installmentNumber': installmentNumber,
      'installmentPaybackTime': installmentPaybackTime,
      'installmentPledge': installmentPledge,
      'age': age,
      'room': room,
      'hasGarage': hasGarage,
      'hasStoreHouse': hasStoreHouse,
      'docType': docType,
      'villaTotalFloors': villaTotalFloors,
      'buildingSide': buildingSide,
      'reconstruct': reconstruct,
      'flooringMaterialType': flooringMaterialType,
      'cabinetType': cabinetType,
      'wc': wc,
      'coolingSystemType': coolingSystemType,
      'heatingSystemType': heatingSystemType,
      'heatWaterSystemType': heatWaterSystemType,
      'hasCentralAnthena': hasCentralAnthena,
      'hasConferenceHall': hasConferenceHall,
      'hasBathTub': hasBathTub,
      'hasMasterRoom': hasMasterRoom,
      'hasBalcony': hasBalcony,
      'hasGazebo': hasGazebo,
      'hasSwimmingPool': hasSwimmingPool,
      'hasRoofGarden': hasRoofGarden,
      'hasLobby': hasLobby,
      'hasGamingRoom': hasGamingRoom,
      'hasSportingHall': hasSportingHall,
      'hasSaunaJacuzzi': hasSaunaJacuzzi,
    };
  }
}

class Location {
  String address;
  LngLat lngLat;

  Location({
    required this.address,
    required this.lngLat,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      address: json['address'],
      lngLat: LngLat.fromJson(json['lngLat']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'lngLat': lngLat.toJson(),
    };
  }
}

class LngLat {
  double lng;
  double lat;

  LngLat({
    required this.lng,
    required this.lat,
  });

  factory LngLat.fromJson(Map<String, dynamic> json) {
    return LngLat(
      lng: json['lng'].toDouble(),
      lat: json['lat'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lng': lng,
      'lat': lat,
    };
  }
}
