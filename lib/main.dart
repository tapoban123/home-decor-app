import "package:chat_app/commons/theme/custom_colors.dart";
import "package:chat_app/navigation/bottom_nav_controller.dart";
import "package:chat_app/pages/auth/pages/set_password.dart";
import "package:chat_app/pages/home/pages/launch/splash_screen.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

void main() {
  runApp(
    const ProviderScope(child: ChatApp()),
  );
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat App",
      theme: ThemeData.light(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: CustomColors.whiteColor,
      ),
      home: BottomNavController(),
    );
  }
}
