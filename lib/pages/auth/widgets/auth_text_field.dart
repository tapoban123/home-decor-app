import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String hintText;

  const AuthTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0xfffaf0e6),
          ),
        ),
        fillColor: const Color(0xfffaf0e6),
        filled: true,
        prefixIcon: Icon(Icons.remove_red_eye),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontFamily: "Poppins",
          color: Color(0xffdcbeb6),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
        ).copyWith(left: 20),
      ),
    );
  }
}
