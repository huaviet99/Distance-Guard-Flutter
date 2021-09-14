class CountryInfoResponse {
  final int id;
  final String iso2;
  final String iso3;
  final dynamic latitude;
  final dynamic longtitude;
  final String flag;

  CountryInfoResponse(
      {required this.id,
      required this.iso2,
      required this.iso3,
      required this.latitude,
      required this.longtitude,
      required this.flag});

  factory CountryInfoResponse.fromJson(Map<String, dynamic> json) {
    final id = json['_id'] ?? 0;
    final iso2 = json['iso2'] ?? "";
    final iso3 = json['iso3'] ?? "";
    final lat = json['lat'];
    final long = json['long'];
    final flag = json['flag'];
    return CountryInfoResponse(
        id: id,
        iso2: iso2,
        iso3: iso3,
        latitude: lat,
        longtitude: long,
        flag: flag);
  }
}
