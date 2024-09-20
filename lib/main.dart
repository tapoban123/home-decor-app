import "package:chat_app/utils/commons/theme/custom_colors.dart";
import "package:chat_app/pages/launch/splash_screen.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

void main() {
  runApp(
    const ProviderScope(child: HomeDecorApp()),
  );
}

class HomeDecorApp extends StatelessWidget {
  const HomeDecorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat App",
      theme: ThemeData.light(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: CustomColors.whiteColor,
      ),
      home: const SplashScreen(),
    );
  }
}
