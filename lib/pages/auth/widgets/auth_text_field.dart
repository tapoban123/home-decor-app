import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

StateProvider<bool> obsecureTextProvider = StateProvider<bool>(
  (ref) => false,
);

class AuthTextField extends ConsumerWidget {
  final String hintText;
  final bool obsecureText;

  const AuthTextField({
    super.key,
    required this.hintText,
    this.obsecureText = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    OutlineInputBorder textFieldBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: Color(0xfffaf0e6),
      ),
    );

    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: textFieldBorder,
        focusedBorder: textFieldBorder,
        fillColor: const Color(0xfffaf0e6),
        filled: true,
        suffixIcon: obsecureText
            ? GestureDetector(
                onTap: () {
                  ref.read(obsecureTextProvider.notifier).update(
                        (state) => !state,
                      );
                },
                child: Icon(
                  ref.watch(obsecureTextProvider)
                      ? CupertinoIcons.eye
                      : CupertinoIcons.eye_slash,
                  color: const Color(0xffe5baaa),
                ),
              )
            : null,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontFamily: "Poppins",
          color: Color(0xffdcbeb6),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
        ).copyWith(left: 20),
      ),
      obscureText:
          obsecureText ? ref.watch(obsecureTextProvider) : obsecureText,
    );
  }
}
