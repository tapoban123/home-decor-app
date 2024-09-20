import 'package:chat_app/navigation/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class BottomNavController extends StatelessWidget {
  const BottomNavController({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
