import 'package:flutter_application_1/services/models/filterModel.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class AdvRepo {
  RxMap<String, AdvretismentFilter> filters = RxMap();

  RxList<String> selectedCity = RxList();
  var selectedCityCount = 0.obs; // تعداد شهرهای انتخاب‌شده
  void addFilters(List<AdvretismentFilter> filter) {
    for (var f in filter) {
      filters[f.key()] = f;
    }
  }

  void addFilter1(String key, AdvretismentFilter value) {
    filters[key] = value; // Add or update the filter with the correct type
  }

  void removeFilters(List<AdvretismentFilter> filter) {
    for (var f in filter) {
      filters.remove(f.key());
    }
  }

  void mangeCity(List<String> cities) {
    selectedCity.value.clear();
    selectedCity.addAll(cities);
  }

  void clearSelectedCity() {}
}
