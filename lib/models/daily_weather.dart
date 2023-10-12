class DailyWeather {
  final List<dynamic> time;
  final List<dynamic> maxTemperature;
  final List<dynamic> minTemperature;
  final List<dynamic> uvIndex;
  final List<dynamic> windspeed;

  DailyWeather({
    required this.time,
    required this.maxTemperature,
    required this.minTemperature,
    required this.uvIndex,
    required this.windspeed,
  });

  factory DailyWeather.fromJson(Map<String, dynamic> json) {
    return DailyWeather(
      time: json["time"],
      maxTemperature: json["temperature_2m_max"],
      minTemperature: json["temperature_2m_min"],
      uvIndex: json["uv_index_max"],
      windspeed: json["windspeed_10m_max"],
    );
  }
}
