import 'package:chat_app/utils/commons/theme/custom_colors.dart';
import 'package:chat_app/navigation/widgets/nav_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: CustomColors.whiteColor,
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavIcon(
            pageNumber: 0,
          ),
          NavIcon(
            pageNumber: 1,
          ),
          NavIcon(
            pageNumber: 2,
          ),
          NavIcon(
            pageNumber: 3,
          ),
          NavIcon(
            pageNumber: 4,
          ),
        ],
      ),
    );
  }
}
