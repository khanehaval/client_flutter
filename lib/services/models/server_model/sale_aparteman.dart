class SaleApartemanServerModel {
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
  int? meterage;
  String? buildingType;
  bool? saleAsInstallment;
  int? prepaymentPercent;
  int? prepayment;
  int? installmentAmount;
  String? installmentNumber;
  String? installmentPaybackTime;
  String? installmentPledge;
  bool? hasLoan;
  int? totalLoanAmount;
  int? loanInstallmentAmount;
  String? loanInstallmentNumber;
  String? age;
  String? room;
  String? floorNumber;
  bool? hasGarage;
  bool? hasElevator;
  bool? hasStoreHouse;
  String? docType;
  String? totalFloors;
  String? unitInFloor;
  int? totalUnits;
  String? buildingSide;
  String? reconstruct;
  String? flooringMaterialType;
  String? cabinetType;
  String? wc;
  String? coolingSystemType;
  String? heatingSystemType;
  String? heatWaterSystemType;
  bool? hasCentralAntenna;
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

  SaleApartemanServerModel({
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
    this.meterage,
    this.buildingType,
    this.saleAsInstallment,
    this.prepaymentPercent,
    this.prepayment,
    this.installmentAmount,
    this.installmentNumber,
    this.installmentPaybackTime,
    this.installmentPledge,
    this.hasLoan,
    this.totalLoanAmount,
    this.loanInstallmentAmount,
    this.loanInstallmentNumber,
    this.age,
    this.room,
    this.floorNumber,
    this.hasGarage,
    this.hasElevator,
    this.hasStoreHouse,
    this.docType,
    this.totalFloors,
    this.unitInFloor,
    this.totalUnits,
    this.buildingSide,
    this.reconstruct,
    this.flooringMaterialType,
    this.cabinetType,
    this.wc,
    this.coolingSystemType,
    this.heatingSystemType,
    this.heatWaterSystemType,
    this.hasCentralAntenna,
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
  factory SaleApartemanServerModel.fromJson(Map<String, dynamic> json) {
    try {
      return SaleApartemanServerModel(
        id: json['id'] as String?,
        cityId: json['cityId'] as String?,
        districtId: json['districtId'] as String?,
        location: json['location'] != null
            ? Location.fromJson(json['location'] as Map<String, dynamic>)
            : null,
        thumbnail: json['thumbnail'] as String?,
        images: (json['images'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList(),
        subject: json['subject'] as String?,
        title: json['title'] as String?,
        description: json['description'] as String?,
        showContactInfo: json['showContactInfo'] as bool?,
        canChat: json['canChat'] as bool?,
        sendToAgencyAndConsultUser: json['sendToAgencyAndConsultUser'] as bool?,
        totalPrice: json['totalPrice'] as int?,
        meterage: json['meterage'] as int?,
        buildingType: json['buildingType'] as String?,
        saleAsInstallment: json['saleAsInstallment'] as bool?,
        prepaymentPercent: json['prepaymentPercent'] as int?,
        prepayment: json['prepayment'] as int?,
        installmentAmount: json['installmentAmount'] as int?,
        installmentNumber: json['installmentNumber'] as String?,
        installmentPaybackTime: json['installmentPaybackTime'] as String?,
        installmentPledge: json['installmentPledge'] as String?,
        hasLoan: json['hasLoan'] as bool?,
        totalLoanAmount: json['totalLoanAmount'] as int?,
        loanInstallmentAmount: json['loanInstallmentAmount'] as int?,
        loanInstallmentNumber: json['loanInstallmentNumber'] as String?,
        age: json['age'] as String?,
        room: json['room'] as String?,
        floorNumber: json['floorNumber'] as String?,
        hasGarage: json['hasGarage'] as bool?,
        hasElevator: json['hasElevator'] as bool?,
        hasStoreHouse: json['hasStoreHouse'] as bool?,
        docType: json['docType'] as String?,
        totalFloors: json['totalFloors'] as String?,
        unitInFloor: json['unitInFloor'] as String?,
        totalUnits: json['totalUnits'] as int?,
        buildingSide: json['buildingSide'] as String?,
        reconstruct: json['reconstruct'] as String?,
        flooringMaterialType: json['flooringMaterialType'] as String?,
        cabinetType: json['cabinetType'] as String?,
        wc: json['wc'] as String?,
        coolingSystemType: json['coolingSystemType'] as String?,
        heatingSystemType: json['heatingSystemType'] as String?,
        heatWaterSystemType: json['heatWaterSystemType'] as String?,
        hasCentralAntenna: json['hasCentralAntenna'] as bool?,
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
    } catch (e) {
      print('Error parsing SaleApartemanServerModel: $e');
      return SaleApartemanServerModel(); // Return a default or empty instance on error
    }
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
      'meterage': meterage,
      "buildingType": "penthouse | tower | suite",
      'saleAsInstallment': saleAsInstallment,
      'prepaymentPercent': prepaymentPercent,
      'prepayment': prepayment,
      'installmentAmount': installmentAmount,
      'installmentNumber': installmentNumber,
      'installmentPaybackTime': installmentPaybackTime,
      "installmentPledge": "zamen | safteh | check",
      'totalLoanAmount': totalLoanAmount,
      'loanInstallmentAmount': loanInstallmentAmount,
      'loanInstallmentNumber': loanInstallmentNumber,
      'age': age,
      'room': room,
      'floorNumber': floorNumber,
      'hasGarage': hasGarage,
      'hasElevator': hasElevator,
      'hasStoreHouse': hasStoreHouse,
      'docType': docType,
      'totalFloors': totalFloors,
      'unitInFloor': unitInFloor,
      'totalUnits': totalUnits,
      'buildingSide': buildingSide,
      'reconstruct': reconstruct,
      'flooringMaterialType': flooringMaterialType,
      'cabinetType': cabinetType,
      'wc': wc,
      'coolingSystemType': coolingSystemType,
      'heatingSystemType': heatingSystemType,
      'heatWaterSystemType': heatWaterSystemType,
      'hasCentralAnthena': hasCentralAntenna,
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
      lng: json['lng'] as double?,
      lat: json['lat'] as double?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lng': lng,
      'lat': lat,
    };
  }
}
