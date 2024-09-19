import 'package:chat_app/pages/auth/pages/login.dart';
import 'package:chat_app/pages/auth/pages/sign_up.dart';
import 'package:chat_app/pages/home/widgets/auth_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: SizedBox(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/home_img.png"),
                    const Text(
                      "HOME",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 58,
                        fontWeight: FontWeight.w600,
                        color: Color(0xfff4b5a4),
                      ),
                      textHeightBehavior: TextHeightBehavior(
                        applyHeightToFirstAscent: false,
                        applyHeightToLastDescent: false,
                        leadingDistribution:
                            TextLeadingDistribution.proportional,
                      ),
                    ),
                    const Text(
                      "DECOR",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 33,
                        fontWeight: FontWeight.normal,
                        color: Color(0xfff4b5a4),
                        letterSpacing: 15,
                      ),
                      textHeightBehavior: TextHeightBehavior(
                        applyHeightToFirstAscent: false,
                        applyHeightToLastDescent: false,
                        leadingDistribution:
                            TextLeadingDistribution.proportional,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const SizedBox(
                      width: 300,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    AuthButton(
                      buttonColor: const Color(0xfff4b5a4),
                      buttonText: "Log In",
                      textColor: const Color(0xffcc7861),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthButton(
                      buttonColor: const Color(0xfffaf0e6),
                      buttonText: "Sign Up",
                      textColor: const Color(0xffe3cbc2),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ));
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
