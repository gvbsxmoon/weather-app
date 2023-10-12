import "package:flutter/material.dart";
import 'package:weather/utils/app_color.dart';

class RoundedButton extends StatefulWidget {
  const RoundedButton({
    super.key,
    required this.callback,
    required this.icon,
    this.iconColor = AppColor.blueDark,
  });

  final void callback;
  final IconData icon;
  final Color iconColor;

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: AppColor.bluePastel.withOpacity(0.3),
      ),
      child: InkWell(
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          widget.callback;
        },
        child: Icon(
          widget.icon,
          color: widget.iconColor,
          size: 24,
        ),
      ),
    );
  }
}
