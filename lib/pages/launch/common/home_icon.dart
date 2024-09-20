import 'package:chat_app/utils/commons/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class HomeIcon extends StatelessWidget {
  final Color color;

  const HomeIcon({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/home_img.png",
          color: color,
        ),
        Text(
          "HOME",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 58,
            fontWeight: FontWeight.w600,
            color: color,
          ),
          textHeightBehavior: const TextHeightBehavior(
            applyHeightToFirstAscent: false,
            applyHeightToLastDescent: false,
            leadingDistribution: TextLeadingDistribution.proportional,
          ),
        ),
        Text(
          "DECOR",
          style: TextStyle(
            fontFamily: "Inter",
            fontSize: 33,
            fontWeight: FontWeight.normal,
            color: color,
            letterSpacing: 15,
          ),
          textHeightBehavior: const TextHeightBehavior(
            applyHeightToFirstAscent: false,
            applyHeightToLastDescent: false,
            leadingDistribution: TextLeadingDistribution.proportional,
          ),
        ),
      ],
    );
  }
}
