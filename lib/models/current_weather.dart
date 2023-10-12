import 'package:weather/utils/compass_direction.dart';

class CurrentWeather {
  final double temperature;
  final double windspeed;
  final String windDirection;
  final int weatherCode;
  final bool isDay;

  CurrentWeather({
    required this.temperature,
    required this.windspeed,
    required this.windDirection,
    required this.weatherCode,
    required this.isDay,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      temperature: json["temperature"],
      windspeed: json["windspeed"],
      windDirection: compassDirection(json["winddirection"]),
      weatherCode: json["weathercode"],
      isDay: json["isDay"] == 1 ? true : false,
    );
  }
}
