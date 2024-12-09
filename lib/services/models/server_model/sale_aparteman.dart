import 'package:flutter_application_1/services/models/server_model/sale_old_house.dart';

class SaleApartemanServerModel {
  String? id;
  String? cityId;
  String? districtId;
  Location? location;
  String? thumbnail;
  List<String> images;
  String? subject;
  String? title;
  String? description;
  bool showContactInfo;
  bool canChat;
  bool sendToAgencyAndConsultUser;
  int totalPrice;
  int meterage;
  String? buildingType;
  bool saleAsInstallment;
  int prepaymentPercent;
  int prepayment;
  int installmentAmount;
  String? installmentNumber;
  String? installmentPaybackTime;
  String? installmentPledge;
  bool hasLoan;
  int totalLoanAmount;
  int loanInstallmentAmount;
  String? loanInstallmentNumber;
  String? age;
  String? room;
  String? floorNumber;
  bool hasGarage;
  bool hasElevator;
  bool hasStoreHouse;
  String? docType;
  String? totalFloors;
  String? unitInFloor;
  int totalUnits;
  String? buildingSide;
  String? reconstruct;
  String? flooringMaterialType;
  String? cabinetType;
  String? wc;
  String? coolingSystemType;
  String? heatingSystemType;
  String? heatWaterSystemType;
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

  SaleApartemanServerModel({
    this.id,
    this.cityId,
    this.districtId,
    this.location,
    this.thumbnail,
    this.images = const [],
    this.subject,
    this.title,
    this.description,
    this.showContactInfo = false,
    this.canChat = false,
    this.sendToAgencyAndConsultUser = false,
    this.totalPrice = 0,
    this.meterage = 0,
    this.buildingType,
    this.saleAsInstallment = false,
    this.prepaymentPercent = 0,
    this.prepayment = 0,
    this.installmentAmount = 0,
    this.installmentNumber,
    this.installmentPaybackTime,
    this.installmentPledge,
    this.hasLoan = false,
    this.totalLoanAmount = 0,
    this.loanInstallmentAmount = 0,
    this.loanInstallmentNumber,
    this.age,
    this.room,
    this.floorNumber,
    this.hasGarage = false,
    this.hasElevator = false,
    this.hasStoreHouse = false,
    this.docType,
    this.totalFloors,
    this.unitInFloor,
    this.totalUnits = 0,
    this.buildingSide,
    this.reconstruct,
    this.flooringMaterialType,
    this.cabinetType,
    this.wc,
    this.coolingSystemType,
    this.heatingSystemType,
    this.heatWaterSystemType,
    this.hasCentralAnthena = false,
    this.hasConferenceHall = false,
    this.hasBathTub = false,
    this.hasMasterRoom = false,
    this.hasBalcony = false,
    this.hasGazebo = false,
    this.hasSwimmingPool = false,
    this.hasRoofGarden = false,
    this.hasLobby = false,
    this.hasGamingRoom = false,
    this.hasSportingHall = false,
    this.hasSaunaJacuzzi = false,
  });

  SaleApartemanServerModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        cityId = json['cityId'],
        districtId = json['districtId'],
        location = json['location'] != null
            ? Location.fromJson(json['location'])
            : null,
        thumbnail = json['thumbnail'],
        images = List<String>.from(json['images'] ?? []),
        subject = json['subject'],
        title = json['title'],
        description = json['description'],
        showContactInfo = json['showContactInfo'] ?? false,
        canChat = json['canChat'] ?? false,
        sendToAgencyAndConsultUser =
            json['sendToAgencyAndConsultUser'] ?? false,
        totalPrice = json['totalPrice'] ?? 0,
        meterage = json['meterage'] ?? 0,
        buildingType = json['buildingType'],
        saleAsInstallment = json['saleAsInstallment'] ?? false,
        prepaymentPercent = json['prepaymentPercent'] ?? 0,
        prepayment = json['prepayment'] ?? 0,
        installmentAmount = json['installmentAmount'] ?? 0,
        installmentNumber = json['installmentNumber'],
        installmentPaybackTime = json['installmentPaybackTime'],
        installmentPledge = json['installmentPledge'],
        hasLoan = json['hasLoan'] ?? false,
        totalLoanAmount = json['totalLoanAmount'] ?? 0,
        loanInstallmentAmount = json['loanInstallmentAmount'] ?? 0,
        loanInstallmentNumber = json['loanInstallmentNumber'],
        age = json['age'],
        room = json['room'],
        floorNumber = json['floorNumber'],
        hasGarage = json['hasGarage'] ?? false,
        hasElevator = json['hasElevator'] ?? false,
        hasStoreHouse = json['hasStoreHouse'] ?? false,
        docType = json['docType'],
        totalFloors = json['totalFloors'],
        unitInFloor = json['unitInFloor'],
        totalUnits = json['totalUnits'] ?? 0,
        buildingSide = json['buildingSide'],
        reconstruct = json['reconstruct'],
        flooringMaterialType = json['flooringMaterialType'],
        cabinetType = json['cabinetType'],
        wc = json['wc'],
        coolingSystemType = json['coolingSystemType'],
        heatingSystemType = json['heatingSystemType'],
        heatWaterSystemType = json['heatWaterSystemType'],
        hasCentralAnthena = json['hasCentralAnthena'] ?? false,
        hasConferenceHall = json['hasConferenceHall'] ?? false,
        hasBathTub = json['hasBathTub'] ?? false,
        hasMasterRoom = json['hasMasterRoom'] ?? false,
        hasBalcony = json['hasBalcony'] ?? false,
        hasGazebo = json['hasGazebo'] ?? false,
        hasSwimmingPool = json['hasSwimmingPool'] ?? false,
        hasRoofGarden = json['hasRoofGarden'] ?? false,
        hasLobby = json['hasLobby'] ?? false,
        hasGamingRoom = json['hasGamingRoom'] ?? false,
        hasSportingHall = json['hasSportingHall'] ?? false,
        hasSaunaJacuzzi = json['hasSaunaJacuzzi'] ?? false;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['cityId'] = cityId;
    data['districtId'] = districtId;
    if (location != null) data['location'] = location!.toJson();
    data['thumbnail'] = thumbnail;
    data['images'] = images;
    data['subject'] = subject;
    data['title'] = title;
    data['description'] = description;
    data['showContactInfo'] = showContactInfo;
    data['canChat'] = canChat;
    data['sendToAgencyAndConsultUser'] = sendToAgencyAndConsultUser;
    data['totalPrice'] = totalPrice;
    data['meterage'] = meterage;
    data['buildingType'] = buildingType;
    data['saleAsInstallment'] = saleAsInstallment;
    data['prepaymentPercent'] = prepaymentPercent;
    data['prepayment'] = prepayment;
    data['installmentAmount'] = installmentAmount;
    data['installmentNumber'] = installmentNumber;
    data['installmentPaybackTime'] = installmentPaybackTime;
    data['installmentPledge'] = installmentPledge;
    data['hasLoan'] = hasLoan;
    data['totalLoanAmount'] = totalLoanAmount;
    data['loanInstallmentAmount'] = loanInstallmentAmount;
    data['loanInstallmentNumber'] = loanInstallmentNumber;
    data['age'] = age;
    data['room'] = room;
    data['floorNumber'] = floorNumber;
    data['hasGarage'] = hasGarage;
    data['hasElevator'] = hasElevator;
    data['hasStoreHouse'] = hasStoreHouse;
    data['docType'] = docType;
    data['totalFloors'] = totalFloors;
    data['unitInFloor'] = unitInFloor;
    data['totalUnits'] = totalUnits;
    data['buildingSide'] = buildingSide;
    data['reconstruct'] = reconstruct;
    data['flooringMaterialType'] = flooringMaterialType;
    data['cabinetType'] = cabinetType;
    data['wc'] = wc;
    data['coolingSystemType'] = coolingSystemType;
    data['heatingSystemType'] = heatingSystemType;
    data['heatWaterSystemType'] = heatWaterSystemType;
    data['hasCentralAnthena'] = hasCentralAnthena;
    data['hasConferenceHall'] = hasConferenceHall;
    data['hasBathTub'] = hasBathTub;
    data['hasMasterRoom'] = hasMasterRoom;
    data['hasBalcony'] = hasBalcony;
    data['hasGazebo'] = hasGazebo;
    data['hasSwimmingPool'] = hasSwimmingPool;
    data['hasRoofGarden'] = hasRoofGarden;
    data['hasLobby'] = hasLobby;
    data['hasGamingRoom'] = hasGamingRoom;
    data['hasSportingHall'] = hasSportingHall;
    data['hasSaunaJacuzzi'] = hasSaunaJacuzzi;
    return data;
  }
}



// class SaleApartemanServerModel {
//   String id;
//   String cityId;
//   String districtId;
//   Location location;
//   String thumbnail;
//   List<String> images;
//   String subject;
//   String title;
//   String description;
//   bool showContactInfo;
//   bool canChat;
//   bool sendToAgencyAndConsultUser;
//   int totalPrice;
//   int meterage;
//   String buildingType;
//   bool saleAsInstallment;
//   int prepaymentPercent;
//   int prepayment;
//   int installmentAmount;
//   String installmentNumber;
//   String installmentPaybackTime;
//   String installmentPledge;
//   bool hasLoan;
//   int totalLoanAmount;
//   int loanInstallmentAmount;
//   String loanInstallmentNumber;
//   String age;
//   String room;
//   String floorNumber;
//   bool hasGarage;
//   bool hasElevator;
//   bool hasStoreHouse;
//   String docType;
//   String totalFloors;
//   String unitInFloor;
//   int totalUnits;
//   String buildingSide;
//   String reconstruct;
//   String flooringMaterialType;
//   String cabinetType;
//   String wc;
//   String coolingSystemType;
//   String heatingSystemType;
//   String heatWaterSystemType;
//   bool hasCentralAntenna;
//   bool hasConferenceHall;
//   bool hasBathTub;
//   bool hasMasterRoom;
//   bool hasBalcony;
//   bool hasGazebo;
//   bool hasSwimmingPool;
//   bool hasRoofGarden;
//   bool hasLobby;
//   bool hasGamingRoom;
//   bool hasSportingHall;
//   bool hasSaunaJacuzzi;

//   SaleApartemanServerModel({
//     this.id = "string",
//     this.cityId = "string",
//     this.districtId = "string",
//     this.location = const Location(),
//     this.thumbnail = "string",
//     this.images = const ["string"],
//     this.subject = "string",
//     this.title = "string",
//     this.description = "string",
//     this.showContactInfo = true,
//     this.canChat = true,
//     this.sendToAgencyAndConsultUser = true,
//     this.totalPrice = 0,
//     this.meterage = 100,
//     this.buildingType = "penthouse | tower | suite",
//     this.saleAsInstallment = true,
//     this.prepaymentPercent = 30,
//     this.prepayment = 1000000,
//     this.installmentAmount = 100000,
//     this.installmentNumber = "string",
//     this.installmentPaybackTime = "string",
//     this.installmentPledge = "zamen | safteh | check",
//     this.hasLoan = true,
//     this.totalLoanAmount = 10000,
//     this.loanInstallmentAmount = 10000,
//     this.loanInstallmentNumber = "string",
//     this.age = "string",
//     this.room = "string",
//     this.floorNumber = "string",
//     this.hasGarage = true,
//     this.hasElevator = true,
//     this.hasStoreHouse = true,
//     this.docType = "string",
//     this.totalFloors = "string",
//     this.unitInFloor = "string",
//     this.totalUnits = 20,
//     this.buildingSide = "string",
//     this.reconstruct = "string",
//     this.flooringMaterialType = "string",
//     this.cabinetType = "string",
//     this.wc = "string",
//     this.coolingSystemType = "string",
//     this.heatingSystemType = "string",
//     this.heatWaterSystemType = "string",
//     this.hasCentralAntenna = true,
//     this.hasConferenceHall = true,
//     this.hasBathTub = true,
//     this.hasMasterRoom = true,
//     this.hasBalcony = true,
//     this.hasGazebo = true,
//     this.hasSwimmingPool = true,
//     this.hasRoofGarden = true,
//     this.hasLobby = true,
//     this.hasGamingRoom = true,
//     this.hasSportingHall = true,
//     this.hasSaunaJacuzzi = true,
//   });

//   toJson() {}

//   // Methods for `fromJson` and `toJson` can be implemented similarly
//   // or you can use json_serializable for automatic generation.
// }

// class Location {
//   final String address;
//   final LngLat lngLat;

//   const Location({
//     this.address = "string",
//     this.lngLat = const LngLat(),
//   });

//   static fromJson(Map<String, dynamic> json) {}

//   toJson() {}
// }

// class LngLat {
//   final double lng;
//   final double lat;

//   const LngLat({
//     this.lng = 0,
//     this.lat = 0,
//   });
// }
