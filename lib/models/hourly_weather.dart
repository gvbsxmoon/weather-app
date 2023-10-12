import 'package:weather/utils/get_hours.dart';

class HourlyWeather {
  final int count;
  final List<String> time;
  final List<double> temperature;
  final List<double> precipitationProbability;
  final List<int> weatherCode;

  HourlyWeather({
    required this.count,
    required this.time,
    required this.temperature,
    required this.precipitationProbability,
    required this.weatherCode,
  });

  factory HourlyWeather.fromJson(Map<String, dynamic> json) {
    return HourlyWeather(
      count: (json["time"] as List<dynamic>).sublist(0, 23).length,
      time: getHours((json["time"] as List<dynamic>).cast<String>().sublist(0, 23)),
      temperature: (json["temperature_2m"] as List<dynamic>).cast<double>().sublist(0, 23),
      precipitationProbability: (json["precipitation_probability"]).cast<double>().sublist(0, 23),
      weatherCode: (json["weathercode"] as List<dynamic>).cast<int>().sublist(0, 23),
    );
  }
}
