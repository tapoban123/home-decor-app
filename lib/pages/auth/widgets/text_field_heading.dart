import 'package:flutter/material.dart';

class TextFieldHeading extends StatelessWidget {
  final String text;

  const TextFieldHeading({
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
        fontSize: 20,
      ),
    );
  }
}
