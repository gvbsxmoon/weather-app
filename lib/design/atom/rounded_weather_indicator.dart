import "package:flutter/material.dart";
import "package:lottie/lottie.dart";
import 'package:weather/utils/app_color.dart';
import "package:weather/utils/wmo_description.dart";

class RoundedWeatherIndicator extends StatelessWidget {
  const RoundedWeatherIndicator(
      {super.key,
      required this.wmoValue,
      required this.isDay,
      required this.size});

  final int wmoValue;
  final bool isDay;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          AppColor.beigeMedium.withOpacity(0.5),
          AppColor.beigeMedium.withOpacity(0)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        shape: BoxShape.circle
      ),
      width: size,
      height: size,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: AppColor.brownDark.withOpacity(0.08), blurRadius: 24),
          ],
        ),
        child: Lottie.asset(
          weatherLottie(wmoValue, isDay),
        ),
      ),
    );
  }
}
