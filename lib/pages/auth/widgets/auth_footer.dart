import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthFooter extends StatelessWidget {
  final Widget navigateToPage;
  final String navigateToText;

  const AuthFooter({
    super.key,
    required this.navigateToPage,
    required this.navigateToText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 15.0),
          child: Text(
            "or sign up with",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/fb_Icon.png"),
            const SizedBox(
              width: 16,
            ),
            Image.asset("assets/images/google_Icon.png"),
          ],
        ),
        const SizedBox(
          width: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
              text: "Don't have an account? ",
              children: <TextSpan>[
                TextSpan(
                  text: navigateToText,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => navigateToPage,
                      ));
                    },
                  style: const TextStyle(
                    color: Color(0xffd89988),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
