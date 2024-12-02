abstract class AdvretismentFilter {
  String getTitle();

  String key();
}

class SwitchFilter extends AdvretismentFilter {
  String title;
  SwitchFilter(this.title);
  @override
  String getTitle() {
    return title;
  }

  @override
  String key() {
    return "";
  }
}

class ShakhsiFilter extends AdvretismentFilter {
  @override
  String getTitle() {
    return "شخصی";
  }

  @override
  String key() {
    return "shakhsi";
  }
}

class AmlakFilter extends AdvretismentFilter {
  @override
  String getTitle() {
    return "املاک";
  }

  @override
  String key() {
    return "amlak";
  }
}

class MoshaverFilter extends AdvretismentFilter {
  @override
  String getTitle() {
    return "مشاور";
  }

  @override
  String key() {
    return "mnoshaver";
  }
}

class LimitFilter extends AdvretismentFilter {
  int min;
  int max;
  String title;
  LimitFilter(this.title, {this.max = 0, this.min = 0});
  @override
  String getTitle() {
    return title;
  }

  @override
  String key() {
    return "";
  }
}
