import 'dart:convert';

import 'package:weather/models/current_weather.dart';
import 'package:weather/models/daily_weather.dart';
import 'package:weather/models/hourly_weather.dart';
import 'package:weather/utils/average_humidity.dart';

class WeatherData {
  final double latitude;
  final double longitude;
  final String timezone;
  final double elevation;
  final int humidity;
  final CurrentWeather currentWeather;
  final DailyWeather dailyWeather;
  final HourlyWeather hourlyWeather;

  WeatherData({
    required this.latitude,
    required this.longitude,
    required this.timezone,
    required this.elevation,
    required this.humidity,
    required this.currentWeather,
    required this.dailyWeather,
    required this.hourlyWeather,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      latitude: json["latitude"],
      longitude: json["longitude"],
      timezone: json["timezone"],
      elevation: json["elevation"],
      humidity: averageHumidity((json["hourly"]["relativehumidity_2m"] as List<dynamic>).cast<int>()),
      currentWeather: CurrentWeather.fromJson(json["current_weather"]),
      dailyWeather: DailyWeather.fromJson(json["daily"]),
      hourlyWeather: HourlyWeather.fromJson(json["hourly"]),
    );
  }
}
