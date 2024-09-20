import 'package:chat_app/commons/theme/custom_colors.dart';
import 'package:chat_app/pages/home/pages/launch/common/home_icon.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightPinkColor,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Align(
          child: HomeIcon(color: CustomColors.whiteColor),
        ),
      ),
    );
  }
}
