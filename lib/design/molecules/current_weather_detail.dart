import 'package:flutter/material.dart';
import 'package:weather/design/atom/detail_column.dart';
import 'package:weather/utils/app_color.dart';

class CurrentWeatherDetail extends StatelessWidget {
  const CurrentWeatherDetail({super.key, required this.details});

  final List<dynamic> details;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => Container(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
              width: constraints.maxWidth,
              decoration: BoxDecoration(
                color: AppColor.bluePastel.withOpacity(0.3),
                borderRadius: BorderRadius.circular(50),
              ),
              child: IntrinsicHeight(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DetailColumn(title: "Wind", description: "${details[0]} km/h",),
                      const VerticalDivider(
                        thickness: 2,
                        color: AppColor.blueDark,
                      ),
                      DetailColumn(title: "Direction", description: details[1],),
                      const VerticalDivider(
                        thickness: 2,
                        color: AppColor.blueDark,
                      ),
                      DetailColumn(title: "Humidity", description: "${details[2]} %",),
                      const VerticalDivider(
                        thickness: 2,
                        color: AppColor.blueDark,
                      ),
                      DetailColumn(title: "Elevation", description: "${details[3]}m",),
                    ]),
              ),
            ));
  }
}
