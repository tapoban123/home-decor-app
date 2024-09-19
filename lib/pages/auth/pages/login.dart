import 'package:chat_app/commons/theme/custom_colors.dart';
import 'package:chat_app/pages/auth/pages/sign_up.dart';
import 'package:chat_app/pages/auth/widgets/auth_footer.dart';
import 'package:chat_app/pages/auth/widgets/auth_text_field.dart';
import 'package:chat_app/pages/auth/widgets/auth_app_bar.dart';
import 'package:chat_app/pages/auth/widgets/auth_text_field_heading.dart';
import 'package:chat_app/pages/home/widgets/auth_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.whiteColor,
      appBar: const AuthAppBar(
        appBarText: "Log In",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 18),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const Text(
                "Please enter your details to proceed.",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const AuthTextFieldHeading(text: "Username Or Email"),
              const SizedBox(
                height: 10,
              ),
              const AuthTextField(
                hintText: "example@example.com",
              ),
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
                height: 60,
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: AuthButton(
                        buttonColor: CustomColors.lightPinkColor,
                        buttonText: "Log In",
                        textColor: CustomColors.deepPinkColor,
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 3,
                child: AuthFooter(
                  navigateToPage: SignUpPage(),
                  navigateToText: "Sign Up",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
