import "package:flutter/material.dart";
import "package:lottie/lottie.dart";
import "package:weather/design/atom/temperature.dart";
import "package:weather/utils/app_color.dart";
import "package:weather/utils/wmo_description.dart";

class HourCard extends StatelessWidget {
  const HourCard({
    super.key,
    required this.temperature,
    required this.wmo,
    required this.hour,
  });

  final double temperature;
  final int wmo;
  final String hour;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        decoration: BoxDecoration(
            color: AppColor.bluePastel.withOpacity(0.3),
            borderRadius: BorderRadius.circular(32)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Temperature(
            temperature: temperature.ceil().toString(),
            fontSize: 22,
            unit: false,
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: AppColor.brownDark.withOpacity(0.08),
                    blurRadius: 24),
              ],
            ),
            child: Center(
              child: Lottie.asset(weatherLottie(wmo, true), animate: false),
            ),
          ),
          Text(
            "$hour:00",
            style: const TextStyle(fontSize: 12, color: AppColor.blueDark, fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
