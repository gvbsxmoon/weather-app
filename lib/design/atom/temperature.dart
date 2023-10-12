import "package:flutter/material.dart";
import "package:weather/utils/app_color.dart";

class Temperature extends StatelessWidget {
  const Temperature({
    super.key,
    required this.temperature,
    required this.fontSize,
    this.unit = true,
  });

  final String temperature;
  final double fontSize;
  final bool unit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "$temperature°",
          style: TextStyle(
              fontSize: fontSize,
              color: AppColor.blueDark,
              fontWeight: FontWeight.bold),
        ),
        if (unit)
          Text("C",
              style: TextStyle(
                  fontSize: fontSize / 3,
                  color: AppColor.blueDark,
                  fontWeight: FontWeight.bold)),
      ],
    );
  }
}
