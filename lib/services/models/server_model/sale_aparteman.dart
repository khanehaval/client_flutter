class SaleApartemanServerModel {
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
  int meterage;
  String buildingType;
  bool saleAsInstallment;
  int prepaymentPercent;
  int prepayment;
  int installmentAmount;
  String installmentNumber;
  String installmentPaybackTime;
  String installmentPledge;
  bool hasLoan;
  int totalLoanAmount;
  int loanInstallmentAmount;
  String loanInstallmentNumber;
  String age;
  String room;
  String floorNumber;
  bool hasGarage;
  bool hasElevator;
  bool hasStoreHouse;
  String docType;
  String totalFloors;
  String unitInFloor;
  int totalUnits;
  String buildingSide;
  String reconstruct;
  String flooringMaterialType;
  String cabinetType;
  String wc;
  String coolingSystemType;
  String heatingSystemType;
  String heatWaterSystemType;
  bool hasCentralAntenna;
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

  SaleApartemanServerModel({
    this.id = "string",
    this.cityId = "string",
    this.districtId = "string",
    this.location = const Location(),
    this.thumbnail = "string",
    this.images = const ["string"],
    this.subject = "string",
    this.title = "string",
    this.description = "string",
    this.showContactInfo = true,
    this.canChat = true,
    this.sendToAgencyAndConsultUser = true,
    this.totalPrice = 0,
    this.meterage = 100,
    this.buildingType = "penthouse | tower | suite",
    this.saleAsInstallment = true,
    this.prepaymentPercent = 30,
    this.prepayment = 1000000,
    this.installmentAmount = 100000,
    this.installmentNumber = "string",
    this.installmentPaybackTime = "string",
    this.installmentPledge = "zamen | safteh | check",
    this.hasLoan = true,
    this.totalLoanAmount = 10000,
    this.loanInstallmentAmount = 10000,
    this.loanInstallmentNumber = "string",
    this.age = "string",
    this.room = "string",
    this.floorNumber = "string",
    this.hasGarage = true,
    this.hasElevator = true,
    this.hasStoreHouse = true,
    this.docType = "string",
    this.totalFloors = "string",
    this.unitInFloor = "string",
    this.totalUnits = 20,
    this.buildingSide = "string",
    this.reconstruct = "string",
    this.flooringMaterialType = "string",
    this.cabinetType = "string",
    this.wc = "string",
    this.coolingSystemType = "string",
    this.heatingSystemType = "string",
    this.heatWaterSystemType = "string",
    this.hasCentralAntenna = true,
    this.hasConferenceHall = true,
    this.hasBathTub = true,
    this.hasMasterRoom = true,
    this.hasBalcony = true,
    this.hasGazebo = true,
    this.hasSwimmingPool = true,
    this.hasRoofGarden = true,
    this.hasLobby = true,
    this.hasGamingRoom = true,
    this.hasSportingHall = true,
    this.hasSaunaJacuzzi = true,
  });

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "cityId": cityId,
      "districtId": districtId,
      "location": location.toJson(),
      "thumbnail": thumbnail,
      "images": images,
      "subject": subject,
      "title": title,
      "description": description,
      "showContactInfo": showContactInfo,
      "canChat": canChat,
      "sendToAgencyAndConsultUser": sendToAgencyAndConsultUser,
      "totalPrice": totalPrice,
      "meterage": meterage,
      "buildingType": buildingType,
      "saleAsInstallment": saleAsInstallment,
      "prepaymentPercent": prepaymentPercent,
      "prepayment": prepayment,
      "installmentAmount": installmentAmount,
      "installmentNumber": installmentNumber,
      "installmentPaybackTime": installmentPaybackTime,
      "installmentPledge": installmentPledge,
      "hasLoan": hasLoan,
      "totalLoanAmount": totalLoanAmount,
      "loanInstallmentAmount": loanInstallmentAmount,
      "loanInstallmentNumber": loanInstallmentNumber,
      "age": age,
      "room": room,
      "floorNumber": floorNumber,
      "hasGarage": hasGarage,
      "hasElevator": hasElevator,
      "hasStoreHouse": hasStoreHouse,
      "docType": docType,
      "totalFloors": totalFloors,
      "unitInFloor": unitInFloor,
      "totalUnits": totalUnits,
      "buildingSide": buildingSide,
      "reconstruct": reconstruct,
      "flooringMaterialType": flooringMaterialType,
      "cabinetType": cabinetType,
      "wc": wc,
      "coolingSystemType": coolingSystemType,
      "heatingSystemType": heatingSystemType,
      "heatWaterSystemType": heatWaterSystemType,
      "hasCentralAntenna": hasCentralAntenna,
      "hasConferenceHall": hasConferenceHall,
      "hasBathTub": hasBathTub,
      "hasMasterRoom": hasMasterRoom,
      "hasBalcony": hasBalcony,
      "hasGazebo": hasGazebo,
      "hasSwimmingPool": hasSwimmingPool,
      "hasRoofGarden": hasRoofGarden,
      "hasLobby": hasLobby,
      "hasGamingRoom": hasGamingRoom,
      "hasSportingHall": hasSportingHall,
      "hasSaunaJacuzzi": hasSaunaJacuzzi,
    };
  }
}

class Location {
  final String address;
  final LngLat lngLat;
  const Location({
    this.address = "string",
    this.lngLat = const LngLat(),
  });
  Map<String, dynamic> toJson() {
    return {
      "address": address,
      "lngLat": lngLat.toJson(),
    };
  }

  static Location fromJson(Map<String, dynamic> json) {
    return Location(
      address: json['address'] ?? '',
      lngLat: LngLat.fromJson(json['lngLat'] ?? {}),
    );
  }
}

class LngLat {
  final double lng;
  final double lat;

  const LngLat({
    this.lng = 0,
    this.lat = 0,
  });

  Map<String, dynamic> toJson() {
    return {
      "lng": lng,
      "lat": lat,
    };
  }

  static LngLat fromJson(Map<String, dynamic> json) {
    return LngLat(
      lng: json['lng']?.toDouble() ?? 0.0,
      lat: json['lat']?.toDouble() ?? 0.0,
    );
  }
}
