import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String buttonText;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback onTap;

  const AuthButton({
    super.key,
    required this.buttonColor,
    required this.buttonText,
    required this.textColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        fixedSize: const Size(200, 50),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontFamily: "Poppins",
          color: textColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
