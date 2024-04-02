abstract class FacilitiesModel {
  String getTitle();

  String getAssetPath();

  String key();
}

class Teras extends FacilitiesModel {
  @override
  getTitle() {
    return "تراس/بالکن";
  }

  @override
  String getAssetPath() {
    return "assets/images/Frame_teras.png";
  }

  @override
  String key() {
    return "TERAS";
  }
}

class MasterRoom extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_master.png';
  }

  @override
  String getTitle() {
    return "اتاق مستر";
  }

  @override
  String key() {
    return "MASTER_ROOM";
  }
}

class CenterAntenna extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_anten.png';
  }

  @override
  String getTitle() {
    return "آنتن مرکزی";
  }

  @override
  String key() {
    return "CENTER_ANTENNA";
  }
}

class Labi extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_labi.png';
  }

  @override
  String getTitle() {
    return "لابی";
  }

  @override
  String key() {
    return "LABI";
  }
}
//

class Sona extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_sona.png';
  }

  @override
  String getTitle() {
    return "سونا و جکوزی";
  }

  @override
  String key() {
    return "SONA";
  }
}

class SwimmingPool extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_estakhr.png';
  }

  @override
  String getTitle() {
    return "استخر";
  }

  @override
  String key() {
    return "Swimming_pool".toLowerCase();
  }
}

class RoofGarden extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_garden.png';
  }

  @override
  String getTitle() {
    return "روف گاردن";
  }

  @override
  String key() {
    return "ROOF_GARDEN".toLowerCase();
  }
}

//bathtub

class Bathtub extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_van.png';
  }

  @override
  String getTitle() {
    return "وان";
  }

  @override
  String key() {
    return "Bathtub".toLowerCase();
  }
}

class Gym extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_salon_varzeshi.png';
  }

  @override
  String getTitle() {
    return "سالن ورزشی";
  }

  @override
  String key() {
    return "Gym".toLowerCase();
  }
}

//Al-Achiq

class AlAchiq extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_alachigh.png';
  }

  @override
  String getTitle() {
    return "آلاچبق";
  }

  @override
  String key() {
    return "AlAchiq".toLowerCase();
  }
}

//conference hall
class ConferenceHall extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_salon_ejtema.png';
  }

  @override
  String getTitle() {
    return "سالن اجتماعات";
  }

  @override
  String key() {
    return "Conference_Hall".toLowerCase();
  }
}

class GameRoom extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_game.png';
  }

  @override
  String getTitle() {
    return "اتاق بازی";
  }

  @override
  String key() {
    return "Game_Room".toLowerCase();
  }
}

class GameConsole extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame 12.png';
  }

  @override
  String getTitle() {
    return "کنسول بازی";
  }

  @override
  String key() {
    return "GAME_CONSOLE";
  }
}

class Billiard extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame 11.png';
  }

  @override
  String getTitle() {
    return "میز بیلیارد";
  }

  @override
  String key() {
    return "Billiard".toUpperCase();
  }
}

class Haki extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_haki.png';
  }

  @override
  String getTitle() {
    return "میز هاکی";
  }

  @override
  String key() {
    return "Kali".toUpperCase();
  }
}

class HandFootball extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame 13.png';
  }

  @override
  String getTitle() {
    return "فوتبال دستی";
  }

  @override
  String key() {
    return "HandFootball".toUpperCase();
  }
}

class PingPong extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_pingpong.png';
  }

  @override
  String getTitle() {
    return "پینگ پونگ";
  }

  @override
  String key() {
    return "Ping_Pong".toUpperCase();
  }
}

class Kabab extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_kabab.png';
  }

  @override
  String getTitle() {
    return "کباب پز";
  }

  @override
  String key() {
    return "Kabab".toUpperCase();
  }
}

class Moble extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_moble.png';
  }

  @override
  String getTitle() {
    return "مبلمان";
  }

  @override
  String key() {
    return "Moble".toUpperCase();
  }
}

class TV extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_telewsion.png';
  }

  @override
  String getTitle() {
    return "کباب پز";
  }

  @override
  String key() {
    return "TV".toUpperCase();
  }
}

class Digital extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_digital.png';
  }

  @override
  String getTitle() {
    return "پینگ پونگ";
  }

  @override
  String key() {
    return "Digital".toUpperCase();
  }
}

class Audio extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_system.png';
  }

  @override
  String getTitle() {
    return "کباب پز";
  }

  @override
  String key() {
    return "Frame_system".toUpperCase();
  }
}

class Hairdryer extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_seshovar.png';
  }

  @override
  String getTitle() {
    return "پینگ پونگ";
  }

  @override
  String key() {
    return "Hairdryer".toUpperCase();
  }
}

class Iron extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_otodasti.png';
  }

  @override
  String getTitle() {
    return "کباب پز";
  }

  @override
  String key() {
    return "Iron".toUpperCase();
  }
}

class Refrigerator extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_yakhchal.png';
  }

  @override
  String getTitle() {
    return "پینگ پونگ";
  }

  @override
  String key() {
    return "Refrigerator".toUpperCase();
  }
}

class Kettle extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_ketri.png';
  }

  @override
  String getTitle() {
    return "کباب پز";
  }

  @override
  String key() {
    return "Kettle".toUpperCase();
  }
}

class Stove extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_ojagh.png';
  }

  @override
  String getTitle() {
    return "پینگ پونگ";
  }

  @override
  String key() {
    return "Stove".toUpperCase();
  }
}

class Laundry extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_lebas.png';
  }

  @override
  String getTitle() {
    return "کباب پز";
  }

  @override
  String key() {
    return "Laundry".toUpperCase();
  }
}

class TeaMaker extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_tea.png';
  }

  @override
  String getTitle() {
    return "پینگ پونگ";
  }

  @override
  String key() {
    return "TeaMaker".toUpperCase();
  }
}

class Microwave extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_macro.png';
  }

  @override
  String getTitle() {
    return "کباب پز";
  }

  @override
  String key() {
    return "Microwave".toUpperCase();
  }
}

class CCTV extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_camera.png';
  }

  @override
  String getTitle() {
    return "پینگ پونگ";
  }

  @override
  String key() {
    return "CCTV".toUpperCase();
  }
}

class Door extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_door.png';
  }

  @override
  String getTitle() {
    return "کباب پز";
  }

  @override
  String key() {
    return "Door".toUpperCase();
  }
}
//

class BurglarAlarm extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_dozdgir.png';
  }

  @override
  String getTitle() {
    return "کباب پز";
  }

  @override
  String key() {
    return "Kabab".toUpperCase();
  }
}

class FireExtinguishing extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_harigh.png';
  }

  @override
  String getTitle() {
    return "کباب پز";
  }

  @override
  String key() {
    return "Kabab".toUpperCase();
  }
}

class Internet extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_kabab.png';
  }

  @override
  String getTitle() {
    return "کباب پز";
  }

  @override
  String key() {
    return "Kabab".toUpperCase();
  }
}

class Guard extends FacilitiesModel {
  @override
  String getAssetPath() {
    return 'assets/images/Frame_negahban.png';
  }

  @override
  String getTitle() {
    return "کباب پز";
  }

  @override
  String key() {
    return "Guard".toUpperCase();
  }
}
