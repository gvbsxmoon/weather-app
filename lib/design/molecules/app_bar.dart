import "package:eva_icons_flutter/eva_icons_flutter.dart";
import "package:flutter/material.dart";
import "package:moment_dart/moment_dart.dart";
import "package:weather/design/atom/rounded_button.dart";
import "package:weather/models/reverse_geocode.dart";

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.position});

  final ReverseGeocode position;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const RoundedButton(callback: null, icon: EvaIcons.options2Outline),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(Moment.now().format("dddd, D MMM").toString(), style: const TextStyle(fontSize: 18),),
            const SizedBox(
              height: 2,
            ),
            Text(
              "${position.country}, ${position.city}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        )
      ],
    );
  }
}
