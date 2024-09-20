import 'dart:async';

import 'package:chat_app/pages/launch/launch_screen.dart';
import 'package:chat_app/utils/commons/theme/custom_colors.dart';
import 'package:chat_app/pages/launch/common/home_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 800),
      () {
        Navigator.of(context).pushReplacement(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const LaunchScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).chain(
                CurveTween(curve: Curves.easeIn),
              );

              final position = animation.drive(tween);

              return SlideTransition(
                position: position,
                child: child,
              );
            },
            transitionDuration: const Duration(milliseconds: 300),
          ),
        );
      },
    );
  }

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
