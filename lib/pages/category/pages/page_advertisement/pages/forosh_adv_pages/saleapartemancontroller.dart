import 'package:get/get.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman.dart';

class SaleApartemanController extends GetxController {
  // مدل اصلی
  final saleApartemanServerModel = SaleApartemanServerModel().obs;

  // --- متدهای مربوط به Location و LngLat ---
  void updateLocation(Location location) {
    saleApartemanServerModel.update((model) {
      model?.location = location;
    });
  }

  void updateLngLat(LngLat lngLat) {
    saleApartemanServerModel.update((model) {
      model?.location = Location(
        address: model.location?.address ?? "string",
        lngLat: lngLat,
      );
    });
  }

  void updateAddress(String address) {
    saleApartemanServerModel.update((model) {
      model?.location = Location(
        address: address,
        lngLat: model.location?.lngLat ?? const LngLat(),
      );
    });
  }

  // --- متدهای مربوط به سایر فیلدها ---
  void updateDescription(String description) {
    saleApartemanServerModel.update((model) {
      model?.description = description;
    });
  }

  void updateBuildingType(String buildingType) {
    saleApartemanServerModel.update((model) {
      model?.buildingType = buildingType;
    });
  }

  void updateCityId(String cityId) {
    saleApartemanServerModel.update((model) {
      model?.cityId = cityId;
    });
  }
}
