import 'package:chat_app/utils/commons/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarText;

  const AuthAppBar({
    super.key,
    required this.appBarText,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Image.asset(
          "assets/images/back_arrow.png",
        ),
      ),
      toolbarHeight: 80,
      centerTitle: true,
      title: Text(
        appBarText,
        style: const TextStyle(
          fontFamily: "Poppins",
          color: Color(0xfff4b5a4),
          fontWeight: FontWeight.bold,
        ),
      ),
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      backgroundColor: CustomColors.whiteColor,
    );
  }
}
