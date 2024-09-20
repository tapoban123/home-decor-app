import 'package:chat_app/pages/auth/pages/set_password.dart';
import 'package:chat_app/utils/commons/theme/custom_colors.dart';
import 'package:chat_app/pages/auth/widgets/auth_app_bar.dart';
import 'package:chat_app/pages/auth/widgets/auth_text_field.dart';
import 'package:chat_app/pages/auth/widgets/auth_text_field_heading.dart';
import 'package:chat_app/pages/home/widgets/auth_button.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthAppBar(appBarText: "Forgot Password"),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Reset Password?",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xfffaf0e6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0)
                    .copyWith(top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AuthTextFieldHeading(
                        text: "Enter Your Email Address"),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthTextField(
                      hintText: "example@example.com",
                      fillColor: CustomColors.whiteColor,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: AuthButton(
                        buttonColor: CustomColors.lightPinkColor,
                        buttonText: "Next",
                        textColor: CustomColors.deepPinkColor,
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SetPasswordPage(),
                          ));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
