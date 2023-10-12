import "package:flutter/material.dart";
import "package:weather/design/atom/temperature.dart";
import "package:weather/models/current_weather.dart";
import 'package:weather/utils/app_color.dart';
import "package:weather/design/atom/rounded_weather_indicator.dart";
import "package:weather/utils/wmo_description.dart";

class CurrentWeatherInfos extends StatelessWidget {
  const CurrentWeatherInfos({super.key, required this.currentWeather});

  final CurrentWeather currentWeather;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedWeatherIndicator(
              wmoValue: currentWeather.weatherCode,
              isDay: currentWeather.isDay,
              size: constraints.maxWidth / 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Temperature(temperature: currentWeather.temperature.ceil().toString(), fontSize: 88,),
                Text(
                  weatherDescription(currentWeather.weatherCode),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.blueDark,
                      fontSize: 18),
                )
              ],
            )
          ],
        );
      }),
    );
  }
}
