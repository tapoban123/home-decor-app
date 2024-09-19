import 'package:chat_app/commons/theme/custom_colors.dart';
import 'package:chat_app/pages/auth/widgets/auth_text_field.dart';
import 'package:chat_app/pages/auth/widgets/text_field_heading.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.whiteColor,
      appBar: AppBar(
        leading: Image.asset(
          "assets/images/back_arrow.png",
        ),
        toolbarHeight: 80,
        centerTitle: true,
        title: const Text(
          "Log In",
          style: TextStyle(
            fontFamily: "Poppins",
            color: Color(0xfff4b5a4),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 40),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                "Please enter your details to proceed.",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextFieldHeading(text: "Username Or Email"),
              SizedBox(
                height: 10,
              ),
              AuthTextField(
                hintText: "example@example.com",
              ),
              SizedBox(
                height: 26,
              ),
              TextFieldHeading(text: "Password"),
              SizedBox(
                height: 10,
              ),
              AuthTextField(hintText: "\u2022 " * 5)
            ],
          ),
        ),
      ),
    );
  }
}
