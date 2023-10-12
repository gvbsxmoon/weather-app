import "package:flutter/material.dart";
import "package:weather/design/molecules/hour_card.dart";
import "package:weather/models/hourly_weather.dart";

class HourList extends StatelessWidget {
  const HourList({
    super.key,
    required this.hourlyWeather,
  });

  final HourlyWeather hourlyWeather;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SizedBox(
            height: 130,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, i) => const SizedBox(
                width: 16,
              ),
              itemBuilder: (context, i) => HourCard(
                temperature: hourlyWeather.temperature[i],
                wmo: hourlyWeather.weatherCode[i],
                hour: hourlyWeather.time[i],
              ),
              itemCount: hourlyWeather.count,
            ),
          ),
        ),
      ],
    );
  }
}
