class Base {
  bool? status;
  List<Data>? data;

  Base({this.status, this.data});

  factory Base.fromJson(Map<String, dynamic> json) {
    List<Data> data = [];
    if (json['data'] != null) {
      json['data'].forEach((v) {
        data.add(Data.fromJson(v));
      });
    }
    return Base(status: json['status'], data: data);
  }

  Object? toJson() {}
}

class Data {
  String? key;
  List<Item>? list;

  Data({this.key, this.list});

  factory Data.fromJson(Map<String, dynamic> json) {
    List<Item> list = [];
    if (json['list'] != null) {
      json['list'].forEach((v) {
        list.add(Item.fromJson(v));
      });
    }
    return Data(key: json['key'], list: list);
  }
}

class Item {
  String? value;
  String? label;

  Item({this.value, this.label});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      value: json['value'],
      label: json['label'],
    );
  }
}
