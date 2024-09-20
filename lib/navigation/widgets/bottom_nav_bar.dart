import 'package:chat_app/commons/theme/custom_colors.dart';
import 'package:chat_app/providers/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends ConsumerWidget {
  BottomNavBar({super.key});

  final List<String> pageIconPaths = [
    "assets/images/nav_icons/Home.svg",
    "assets/images/nav_icons/Categories.svg",
    "assets/images/nav_icons/Cart.svg",
    "assets/images/nav_icons/Wishlist.svg",
    "assets/images/nav_icons/Profile.svg",
  ];

  Color setIconColor(int pageNumber, WidgetRef ref) {
    final int currentPage = ref.watch(navigationProvider);

    if (pageNumber == currentPage) {
      return Colors.black;
    } else {
      return CustomColors.lightPinkColor;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: CustomColors.whiteColor,
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            
            child: SvgPicture.asset(
              pageIconPaths[0],
              colorFilter: ColorFilter.mode(
                setIconColor(0, ref),
                BlendMode.srcIn,
              ),
            ),
          ),
          SvgPicture.asset(
            pageIconPaths[1],
            colorFilter: ColorFilter.mode(
              setIconColor(1, ref),
              BlendMode.srcIn,
            ),
          ),
          SvgPicture.asset(
            pageIconPaths[2],
            colorFilter: ColorFilter.mode(
              setIconColor(2, ref),
              BlendMode.srcIn,
            ),
          ),
          SvgPicture.asset(
            pageIconPaths[3],
            colorFilter: ColorFilter.mode(
              setIconColor(3, ref),
              BlendMode.srcIn,
            ),
          ),
          SvgPicture.asset(
            pageIconPaths[4],
            colorFilter: ColorFilter.mode(
              setIconColor(4, ref),
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }
}
