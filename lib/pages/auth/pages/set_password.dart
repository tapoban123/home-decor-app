import 'package:chat_app/commons/theme/custom_colors.dart';
import 'package:chat_app/pages/auth/widgets/auth_app_bar.dart';
import 'package:chat_app/pages/auth/widgets/auth_text_field.dart';
import 'package:chat_app/pages/auth/widgets/auth_text_field_heading.dart';
import 'package:chat_app/pages/home/widgets/auth_button.dart';
import 'package:flutter/material.dart';

class SetPasswordPage extends StatelessWidget {
  const SetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthAppBar(appBarText: "Set Password"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Change The Password",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const AuthTextFieldHeading(text: "Password"),
            const SizedBox(
              height: 10,
            ),
            AuthTextField(
              hintText: "\u2022 " * 5,
              obsecureText: true,
            ),
            const SizedBox(
              height: 30,
            ),
            const AuthTextFieldHeading(text: "Confirm Password"),
            const SizedBox(
              height: 10,
            ),
            AuthTextField(
              hintText: "\u2022 " * 5,
              obsecureText: true,
            ),
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: AuthButton(
                buttonColor: CustomColors.lightPinkColor,
                buttonText: "Reset Password",
                textColor: CustomColors.deepPinkColor,
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
