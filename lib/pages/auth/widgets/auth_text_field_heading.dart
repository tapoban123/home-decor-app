import 'package:flutter/material.dart';

class AuthTextFieldHeading extends StatelessWidget {
  final String text;

  const AuthTextFieldHeading({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    );
  }
}
