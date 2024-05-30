class Aghahi {
  int? userId;
  String? userComment;
  String? userUsername;
  String? userMoshaver;
  String? userAddress;
  String? userAgencyAddress;
  String? userTitle;
  String? userLogo;
  String? userSite;
  String? searchStateTitle;
  String? searchCityTitle;
  String? userAgencyComment;

  
  Aghahi(
      {required this.userId,
      required this.userComment,
      required this.userUsername,
      required this.userMoshaver,
      required this.userAddress,
      required this.userAgencyAddress,
      required this.userTitle,
      required this.userLogo,
      required this.userSite,
      required this.searchStateTitle,
      required this.searchCityTitle,
      required this.userAgencyComment});

  Aghahi.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userComment = json['user_comment'];
    userUsername = json['user_username'];
    userMoshaver = json['user_moshaver'];
    userAddress = json['user_address'];
    userAgencyAddress = json['user_agency_address'];
    userTitle = json['user_title'];
    userLogo = json['user_logo'];
    userSite = json['user_site'];
    searchStateTitle = json['search_state_title'];
    searchCityTitle = json['search_city_title'];
    userAgencyComment = json['user_agency_comment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_comment'] = this.userComment;
    data['user_username'] = this.userUsername;
    data['user_moshaver'] = this.userMoshaver;
    data['user_address'] = this.userAddress;
    data['user_agency_address'] = this.userAgencyAddress;
    data['user_title'] = this.userTitle;
    data['user_logo'] = this.userLogo;
    data['user_site'] = this.userSite;
    data['search_state_title'] = this.searchStateTitle;
    data['search_city_title'] = this.searchCityTitle;
    data['user_agency_comment'] = this.userAgencyComment;
    return data;
  }
}
