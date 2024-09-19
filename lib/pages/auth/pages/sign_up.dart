import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          height: 50,
          width: 50,
          child: Image.asset(
            "assets/images/back_arrow.png",
            fit: BoxFit.fill,
          ),
        ),
        title: Text(
          "Create Account",
          style: TextStyle(
            fontFamily: "Poppins",
            color: Color(0xfff4b5a4),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
