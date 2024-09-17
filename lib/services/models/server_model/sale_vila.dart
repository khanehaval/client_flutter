import 'package:flutter_application_1/services/models/server_model/sale_aparteman.dart';

class SaleVilaServerModel {
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
  double? totalPrice;
  String? buildingType;
  double? landMeterage;
  double? buildingMeterage;
  bool? saleAsInstallment;
  int? prepaymentPercent;
  double? prepayment;
  double? installmentAmount;
  String? installmentNumber;
  String? installmentPaybackTime;
  String? installmentPledge;
  bool? hasLoan;
  double? totalLoanAmount;
  double? loanInstallmentAmount;
  String? loanInstallmentNumber;
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

  SaleVilaServerModel({
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
    this.buildingType,
    this.landMeterage,
    this.buildingMeterage,
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

  factory SaleVilaServerModel.fromJson(Map<String, dynamic> json) {
    return SaleVilaServerModel(
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
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      buildingType: json['buildingType'] as String?,
      landMeterage: (json['landMeterage'] as num?)?.toDouble(),
      buildingMeterage: (json['buildingMeterage'] as num?)?.toDouble(),
      saleAsInstallment: json['saleAsInstallment'] as bool?,
      prepaymentPercent: json['prepaymentPercent'] as int?,
      prepayment: (json['prepayment'] as num?)?.toDouble(),
      installmentAmount: (json['installmentAmount'] as num?)?.toDouble(),
      installmentNumber: json['installmentNumber'] as String?,
      installmentPaybackTime: json['installmentPaybackTime'] as String?,
      installmentPledge: json['installmentPledge'] as String?,
      hasLoan: json['hasLoan'] as bool?,
      totalLoanAmount: (json['totalLoanAmount'] as num?)?.toDouble(),
      loanInstallmentAmount:
          (json['loanInstallmentAmount'] as num?)?.toDouble(),
      loanInstallmentNumber: json['loanInstallmentNumber'] as String?,
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
      'buildingType': buildingType,
      'landMeterage': landMeterage,
      'buildingMeterage': buildingMeterage,
      'saleAsInstallment': saleAsInstallment,
      'prepaymentPercent': prepaymentPercent,
      'prepayment': prepayment,
      'installmentAmount': installmentAmount,
      'installmentNumber': installmentNumber,
      'installmentPaybackTime': installmentPaybackTime,
      'installmentPledge': installmentPledge,
      'hasLoan': hasLoan,
      'totalLoanAmount': totalLoanAmount,
      'loanInstallmentAmount': loanInstallmentAmount,
      'loanInstallmentNumber': loanInstallmentNumber,
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
