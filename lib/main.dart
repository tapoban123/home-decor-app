import "package:chat_app/pages/auth/pages/login.dart";
import "package:chat_app/pages/home/pages/home_page.dart";
import "package:flutter/material.dart";

void main(){
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat App",
      theme: ThemeData.light(useMaterial3: true),
      home: const LoginPage(),
    );
  }
}