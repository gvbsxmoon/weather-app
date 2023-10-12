import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/design/molecules/hour_card.dart';
import 'package:weather/design/molecules/current_weather_infos.dart';
import 'package:weather/design/organisms/hour_list.dart';
import 'package:weather/models/reverse_geocode.dart';
import 'package:weather/utils/app_color.dart';
import 'package:weather/design/molecules/app_bar.dart';
import 'package:weather/design/molecules/current_weather_detail.dart';
import 'package:weather/models/weather_data.dart';
import 'package:weather/services/api_service.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  final WeatherData data = await ApiService.shared.getWeather();
  final ReverseGeocode position = await ApiService.shared.getReverseGeocode();

  runApp(MainApp(
    data: data,
    position: position,
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({
    super.key,
    required this.data,
    required this.position,
  });

  final WeatherData data;
  final ReverseGeocode position;

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //rubik
      //manrope
      theme: ThemeData(textTheme: GoogleFonts.manropeTextTheme()),
      debugShowCheckedModeBanner: false,
      home: Container(
        color: AppColor.beigeLight,
        child: SafeArea(
          bottom: false,
          child: Scaffold(
            backgroundColor: AppColor.beigeLight,
            body: Column(
              children: <Widget>[
                CustomAppBar(
                  position: widget.position,
                ),
                CurrentWeatherInfos(
                  currentWeather: widget.data.currentWeather,
                ),
                CurrentWeatherDetail(
                  details: [
                    widget.data.currentWeather.windspeed.ceil(),
                    widget.data.currentWeather.windDirection,
                    widget.data.humidity,
                    widget.data.elevation
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                HourList(hourlyWeather: widget.data.hourlyWeather),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
