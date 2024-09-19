import 'package:chat_app/pages/auth/widgets/auth_text_field.dart';
import 'package:chat_app/pages/auth/widgets/auth_text_field_heading.dart';
import 'package:flutter/cupertino.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AuthTextFieldHeading(text: "Full Name"),
        const SizedBox(
          height: 10,
        ),
        const AuthTextField(hintText: "e.g. John Smith"),
        const SizedBox(
          height: 26,
        ),
        const AuthTextFieldHeading(text: "Email"),
        const SizedBox(
          height: 10,
        ),
        const AuthTextField(hintText: "example@example.com"),
        const SizedBox(
          height: 26,
        ),
        const AuthTextFieldHeading(text: "Mobile Number"),
        const SizedBox(
          height: 10,
        ),
        const AuthTextField(hintText: "+1 234 567 8910"),
        const SizedBox(
          height: 26,
        ),
        const AuthTextFieldHeading(text: "Date Of Birth"),
        const SizedBox(
          height: 10,
        ),
        const AuthTextField(hintText: "DD / MM / YYYY"),
        const SizedBox(
          height: 26,
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
          height: 26,
        ),
        const AuthTextFieldHeading(text: "Confirm Password"),
        const SizedBox(
          height: 10,
        ),
        AuthTextField(
          hintText: "\u2022 " * 5,
          obsecureText: true,
        ),
      ],
    );
  }
}
