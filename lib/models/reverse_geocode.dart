class ReverseGeocode {
  final String city;
  final String continent;
  final String country;
  final String contryCode;

  ReverseGeocode({
    required this.city,
    required this.continent,
    required this.country,
    required this.contryCode,
  });

  factory ReverseGeocode.fromJson(Map<String, dynamic> json) {
    final components = json["results"][0]["components"];

    return ReverseGeocode(
      city: components["city"],
      continent: components["continent"],
      country: components["country"],
      contryCode: components["country_code"],
    );
  }
}
