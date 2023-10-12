import "dart:convert";
import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:weather/models/reverse_geocode.dart";
import "package:weather/models/weather_data.dart";
import "package:http/http.dart" as http;

class ApiService {
  static final ApiService shared = ApiService._internal();

  final double latitude = 45.46;
  final double longitude = 9.19;

  final String? _openmeteoPath = dotenv.env["OPENMETEO_URL"];
  final String? _opencagePath = dotenv.env["OPENCAGE_URL"];
  final String? _opencageKey = dotenv.env["OPENCAGE_KEY"];

  factory ApiService() {
    return shared;
  }

  ApiService._internal();

  Future<WeatherData> getWeather() async {
    final queryParams = {
      "latitude": latitude.toString(),
      "longitude": longitude.toString(),
      "hourly": "temperature_2m,precipitation_probability,relativehumidity_2m,weathercode",
      "daily":
          "temperature_2m_max,temperature_2m_min,uv_index_max,windspeed_10m_max",
      "current_weather": "true",
      "timezone": "auto",
    };

    try {
      final response = await http.get(
          Uri.parse(_openmeteoPath!).replace(queryParameters: queryParams));
      return WeatherData.fromJson(jsonDecode(response.body));
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<ReverseGeocode> getReverseGeocode() async {
    final queryParams = {
      "key": _opencageKey,
      "q": "$latitude+$longitude",
      "pretty": "1",
    };

    try {
      final response = await http
          .get(Uri.parse(_opencagePath!).replace(queryParameters: queryParams));
      return ReverseGeocode.fromJson(jsonDecode(response.body));
    } catch (e) {
      throw Exception(e);
    }
  }
}
