import 'package:chat_app/commons/theme/custom_colors.dart';
import 'package:chat_app/pages/auth/pages/login.dart';
import 'package:chat_app/pages/auth/widgets/auth_app_bar.dart';
import 'package:chat_app/pages/auth/widgets/auth_footer.dart';
import 'package:chat_app/pages/auth/widgets/sign_up_form.dart';
import 'package:chat_app/pages/home/widgets/auth_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.whiteColor,
      appBar: const AuthAppBar(
        appBarText: "Create Account",
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SignUpForm(),
              const SizedBox(
                height: 26,
              ),
              SizedBox(
                width: 250,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 14,
                    ),
                    text: "By continuing, you agree to\n",
                    children: <TextSpan>[
                      TextSpan(
                        text: "Terms of Use",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: " and "),
                      TextSpan(
                        text: "Privacy Policy.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              AuthButton(
                buttonColor: CustomColors.lightPinkColor,
                buttonText: "Sign Up",
                textColor: CustomColors.deepPinkColor,
                onTap: () {},
              ),
              const SizedBox(
                height: 18,
              ),
              const AuthFooter(
                navigateToPage: LoginPage(),
                navigateToText: "Log In",
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
