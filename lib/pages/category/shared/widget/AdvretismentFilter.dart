import 'package:get/get_rx/src/rx_types/rx_types.dart';

class AdvretismentFilter {
  final String filterKey; // تغییر نام
  final dynamic value;

  AdvretismentFilter({required this.filterKey, required this.value});

  String getKey() => filterKey; // تغییر نام
}

class AdvRepo {
  RxMap<String, AdvretismentFilter> filters = RxMap();

  void addFilter1(String key, dynamic value) {
    filters[key] = AdvretismentFilter(filterKey: key, value: value);
  }

  void removeFilters(List<AdvretismentFilter> filter) {
    for (var f in filter) {
      filters.remove(f.getKey()); // استفاده از getKey
    }
  }

  // سایر متدها و کدها...
}
