import "package:flutter/material.dart";
import "package:weather/utils/app_color.dart";

class DetailColumn extends StatelessWidget {
  const DetailColumn({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
              color: AppColor.blueDark,
              fontSize: 12),
        ),
        Text(description,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.blueDark,
            )),
      ],
    );
  }
}
