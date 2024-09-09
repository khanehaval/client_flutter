class SaleOldHouseServerModel {
  String? id;
  String? cityId;
  String? districtId;
  Location? location;
  String? thumbnail;
  List<String>? images;
  String? subject;
  String? title;
  String? description;
  bool? showContactInfo;
  bool? canChat;
  bool? sendToAgencyAndConsultUser;
  int? totalPrice;
  int? landMeterage;
  int? landLength;
  int? landWidth;
  String? buildingType;
  int? buildingMeterage;
  bool? saleAsInstallment;
  int? prepaymentPercent;
  int? prepayment;
  int? installmentAmount;
  String? installmentNumber;
  String? installmentPaybackTime;
  String? installmentPledge;
  String? age;
  String? room;
  bool? hasGarage;
  bool? hasStoreHouse;
  String? docType;
  String? villaTotalFloors;
  String? buildingSide;
  String? reconstruct;
  String? flooringMaterialType;
  String? cabinetType;
  String? wc;
  String? coolingSystemType;
  String? heatingSystemType;
  String? heatWaterSystemType;
  bool? hasCentralAnthena;
  bool? hasConferenceHall;
  bool? hasBathTub;
  bool? hasMasterRoom;
  bool? hasBalcony;
  bool? hasGazebo;
  bool? hasSwimmingPool;
  bool? hasRoofGarden;
  bool? hasLobby;
  bool? hasGamingRoom;
  bool? hasSportingHall;
  bool? hasSaunaJacuzzi;

  SaleOldHouseServerModel({
    this.id,
    this.cityId,
    this.districtId,
    this.location,
    this.thumbnail,
    this.images,
    this.subject,
    this.title,
    this.description,
    this.showContactInfo,
    this.canChat,
    this.sendToAgencyAndConsultUser,
    this.totalPrice,
    this.landMeterage,
    this.landLength,
    this.landWidth,
    this.buildingType,
    this.buildingMeterage,
    this.saleAsInstallment,
    this.prepaymentPercent,
    this.prepayment,
    this.installmentAmount,
    this.installmentNumber,
    this.installmentPaybackTime,
    this.installmentPledge,
    this.age,
    this.room,
    this.hasGarage,
    this.hasStoreHouse,
    this.docType,
    this.villaTotalFloors,
    this.buildingSide,
    this.reconstruct,
    this.flooringMaterialType,
    this.cabinetType,
    this.wc,
    this.coolingSystemType,
    this.heatingSystemType,
    this.heatWaterSystemType,
    this.hasCentralAnthena,
    this.hasConferenceHall,
    this.hasBathTub,
    this.hasMasterRoom,
    this.hasBalcony,
    this.hasGazebo,
    this.hasSwimmingPool,
    this.hasRoofGarden,
    this.hasLobby,
    this.hasGamingRoom,
    this.hasSportingHall,
    this.hasSaunaJacuzzi,
  });

  factory SaleOldHouseServerModel.fromJson(Map<String, dynamic> json) {
    return SaleOldHouseServerModel(
      id: json['id'] as String?,
      cityId: json['cityId'] as String?,
      districtId: json['districtId'] as String?,
      location: json['location'] != null
          ? Location.fromJson(json['location'] as Map<String, dynamic>)
          : null,
      thumbnail: json['thumbnail'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      subject: json['subject'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      showContactInfo: json['showContactInfo'] as bool?,
      canChat: json['canChat'] as bool?,
      sendToAgencyAndConsultUser: json['sendToAgencyAndConsultUser'] as bool?,
      totalPrice: json['totalPrice'] as int?,
      landMeterage: json['landMeterage'] as int?,
      landLength: json['landLength'] as int?,
      landWidth: json['landWidth'] as int?,
      buildingType: json['buildingType'] as String?,
      buildingMeterage: json['buildingMeterage'] as int?,
      saleAsInstallment: json['saleAsInstallment'] as bool?,
      prepaymentPercent: json['prepaymentPercent'] as int?,
      prepayment: json['prepayment'] as int?,
      installmentAmount: json['installmentAmount'] as int?,
      installmentNumber: json['installmentNumber'] as String?,
      installmentPaybackTime: json['installmentPaybackTime'] as String?,
      installmentPledge: json['installmentPledge'] as String?,
      age: json['age'] as String?,
      room: json['room'] as String?,
      hasGarage: json['hasGarage'] as bool?,
      hasStoreHouse: json['hasStoreHouse'] as bool?,
      docType: json['docType'] as String?,
      villaTotalFloors: json['villaTotalFloors'] as String?,
      buildingSide: json['buildingSide'] as String?,
      reconstruct: json['reconstruct'] as String?,
      flooringMaterialType: json['flooringMaterialType'] as String?,
      cabinetType: json['cabinetType'] as String?,
      wc: json['wc'] as String?,
      coolingSystemType: json['coolingSystemType'] as String?,
      heatingSystemType: json['heatingSystemType'] as String?,
      heatWaterSystemType: json['heatWaterSystemType'] as String?,
      hasCentralAnthena: json['hasCentralAnthena'] as bool?,
      hasConferenceHall: json['hasConferenceHall'] as bool?,
      hasBathTub: json['hasBathTub'] as bool?,
      hasMasterRoom: json['hasMasterRoom'] as bool?,
      hasBalcony: json['hasBalcony'] as bool?,
      hasGazebo: json['hasGazebo'] as bool?,
      hasSwimmingPool: json['hasSwimmingPool'] as bool?,
      hasRoofGarden: json['hasRoofGarden'] as bool?,
      hasLobby: json['hasLobby'] as bool?,
      hasGamingRoom: json['hasGamingRoom'] as bool?,
      hasSportingHall: json['hasSportingHall'] as bool?,
      hasSaunaJacuzzi: json['hasSaunaJacuzzi'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cityId': cityId,
      'districtId': districtId,
      'location': location?.toJson(),
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
  String? address;
  LngLat? lngLat;

  Location({this.address, this.lngLat});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      address: json['address'] as String?,
      lngLat: json['lngLat'] != null
          ? LngLat.fromJson(json['lngLat'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'lngLat': lngLat?.toJson(),
    };
  }
}

class LngLat {
  double? lng;
  double? lat;

  LngLat({this.lng, this.lat});

  factory LngLat.fromJson(Map<String, dynamic> json) {
    return LngLat(
      lng: json['lng']?.toDouble(),
      lat: json['lat']?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lng': lng,
      'lat': lat,
    };
  }
}
